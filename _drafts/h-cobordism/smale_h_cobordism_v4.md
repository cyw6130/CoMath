# Smale 的工作：h-Cobordism 定理与广义庞加莱猜想

> 📚 **参考书目**：*Introductory Lectures on Manifold Topology Signposts* (Thomas Farrell & Yang Su)  
> 🏷️ **标签**：`#smale` `#h-cobordism` `#manifold`

---

# 1 拓扑广义庞加莱猜想

## 1.1 主要结果

> [!important] 🎯 Smale 定理 (GPC: 拓扑广义庞加莱猜想)
> 
> 设 $M^m$ 是闭光滑流形，维数 $m \geq 5$。若 $M$ 是同伦球面，则 $M$ **同胚于球面**。
> 
> **主要工具** ($m \geq 5$)：**h-Cobordism 定理**
> 
> > 设 $W^m$ 是光滑的 h-cobordism，若 $W$ 单连通且维数 $m \geq 6$，则配边 $W$ 微分同胚于 $\partial^- W \times [0,1]$（相对于边界 $\partial^- W$）。

更进一步，利用 h-cobordism 定理，对于单连通光滑流形（特别是光滑同伦球面），当 $n \geq 5$ 时有**双射**：

$$\boxed{\frac{\{S^n \text{ 上的光滑结构}\}}{\{微分同胚\}} \longleftrightarrow \frac{\{n \text{ 维同伦球面}\}}{\{\text{h-cobordism}\}}}$$

|  | 说明 |
|:---:|:---|
| **左边** | 球面上所有光滑结构，即所有怪球构成的集合 |
| **右边** | 所有同伦球面的配边类，记为 $\Theta^n$ |

**$\Theta^n$ 的群结构**：

| 运算 | 定义 |
|:---:|:---|
| 乘法 | 连通和 |
| 单位元 | $S^n$ 上的标准光滑结构 |
| 逆元 | 反转定向，记为 $-\Sigma$（在柱 $\Sigma \times I$ 内挖去 $D^{n+1}$） |

**$\Theta^n$ 的阶数**（与伯努利数密切相关）：

![怪异球面个数表](2-Smale_s_work.png)

> [!warning] ⚠️ 注意
> 由于 h-cobordism 定理在 4 维失效（h-cobordism 类中的元素未必微分同胚），$\Theta^4 = 1$ 不能推出 4 维光滑庞加莱猜想。

---

## 1.2 GPC 的证明

*本节假设 h-cobordism 定理成立。*

### 1.2.1 h-Cobordism 的定义

> [!info] 📐 定义 (Cobordism)
> 
> $(m+1)$ 维 cobordism 是流形 $W^{m+1}$，其边界可写成不交并：
> $$\partial W = \partial^- W \sqcup \partial^+ W$$
> 称 $W$ 是从 $\partial^- W$ 到 $\partial^+ W$ 的**配边**。
> 
> *例：配边但不是 h-配边* 👇
> 
> ![配边示例](3-Smale_s_work.png)

> [!info] 📐 定义 (h-Cobordism)
> 
> $(m+1)$ 维 **h-cobordism** 是配边 $W^{m+1}$，满足含入映射
> $$\partial^- W \hookrightarrow W, \quad \partial^+ W \hookrightarrow W$$
> 都是**同伦等价**。
> 
> *例：平凡配边* 👇
> 
> ![平凡配边](4-Smale_s_work.png)

### 1.2.2 h-Cobordism 定理

> [!important] 🎯 h-Cobordism 定理
> 
> 设 $W^{m+1}$ 是光滑的 h-cobordism。若 $W$ **单连通**且 $m \geq 5$，则
> $$W \cong_{\text{diff}} \partial^- W \times [0,1] \quad (\text{rel } \partial^- W)$$

### 1.2.3 GPC 的证明 ($n \geq 6$)

> [!tip] ✏️ 证明
> 
> 设 $M^m$ 是光滑流形，维数 $\geq 6$ 且是同伦球面。
> 
> ---
> 
> **Step 1️⃣** 在 $M^m$ 上挖去两个隔开的 disk，得到配边 $W^m$。
> 
> ![挖去disk](5-Smale_s_work.png)
> 
> ---
> 
> **Step 2️⃣** 由 **Lemma 2.6**，$W$ 单连通且是光滑 h-cobordism。
> 
> ---
> 
> **Step 3️⃣** 应用 h-cobordism 定理：
> $$W \cong_{\text{diff}} S^{m-1} \times [0,1] \quad (\text{rel } \partial^- W = S^{m-1})$$
> 
> ---
> 
> **Step 4️⃣** 重新粘回挖去的 disk：
> - 底部 disk：通过 identity 映射粘回 → 得到 $\mathbb{D}^m$
> - 顶部 disk：任意粘接映射（影响光滑结构，不影响拓扑）→ 仍同胚于 $S^m$
> 
> ![同胚构造](1-Smale_s_work.png)
> 
> ---
> 
> $$\boxed{M \approx S^m} \quad \blacksquare$$

---

> [!note] 📜 Lemma 2.6
> 同伦球面上挖去两个 disk 得到 h-cobordism ($n \geq 6$)
> 
> **设置**：从同伦球面 $M$ 挖去 $D^+, D^-$，得配边 $W$。
> 
> ![设置示意图](7-Smale_s_work.png)
> 
> ---
> 
> **证明**：
> 
> **(I) $W$ 单连通** — 从「$M$ 单连通」推出「$W$ 单连通」
> 
> | Triple | 定理 | 结论 |
> |:---|:---:|:---|
> | $(M, W \cup D^+, D^-)$ | Van Kampen | $W \cup D^+$ 单连通 |
> | $(W \cup D^+, W, D^+)$ | Van Kampen | $W$ 单连通 ✓ |
> 
> ---
> 
> **(II) $\partial^+ W \hookrightarrow W$ 是同伦等价**
> 
> 1. 对 $(W \cup D^+, W, D^+)$ 用 **Mayer-Vietoris** → 同调群同构
> 2. 用 **Homology Whitehead 定理**：单连通 + 同调等价 ⟹ 同伦等价
> 
> ![Whitehead定理](9-Smale_s_work.png)
> 
> ---
> 
> **(III)** $\partial^- W \hookrightarrow W$ 类似。$\blacksquare$

---

> [!abstract] 📎 附：Whitehead 定理
> 
> | 概念 | 定义 |
> |:---|:---|
> | **弱同伦等价** | 存在 $f: X \to Y$ 使 $f_*: \pi_i(X) \xrightarrow{\cong} \pi_i(Y)$ 对 $\forall i$ |
> | **Whitehead 定理** | CW 复形间：弱同伦等价 ⟹ 同伦等价 |
> | **Homology Whitehead** | 单连通空间：同调等价 ⟹ 同伦等价 |
> 
> 💡 弱同伦等价要求存在映射 $f$ 实现同构，而非仅同伦群同构。存在同伦群同构但不同伦等价的反例。

---

# 2 h-Cobordism 定理

> [!info] 📐 Isotopy（同痕）
> 
> ![同痕定义](10-Smale_s_work.png)
> 
> 我们讨论的同痕总是**光滑同痕**。
> 
> ⚠️ 连续同痕不能区分纽结！
> 
> ![纽结示例](11-Smale_s_work.png)

---

## 2.1 Handle 分解

*（粘接映射）*

---

## 2.2 Handle 运算法则

### 2.2.1 同痕不变性

> [!note] 📜 Prop：同痕扩张定理
> 
> ![同痕扩张定理](12-Smale_s_work.png)

> [!note] 📜 Lemma 1：同痕引理
> 
> 将 handle $h$ 粘到流形 $M$ 上，若使用**同痕**的粘接映射 $f, g: \partial^- h \to \partial M$，则
> $$\boxed{M +_f h \cong M +_g h}$$
> 
> **证明**：
> 
> ![同痕引理证明](13-Smale_s_work.png)

---

### 2.2.2 粘接顺序的交换性

> [!info] 📐 定义：Attaching sphere 与 Complementary sphere
> 
> Handle 写成乘积 $D^i \times D^{n-i}$：
> 
> | 分量 | 名称 | Disk | Sphere |
> |:---:|:---:|:---:|:---:|
> | 第一（粘接用） | Attaching part | $D^i \times \{0\}$ | $\mathscr{S}$ (attaching sphere) |
> | 第二（补维数） | Complementary part | $\{0\} \times D^{n-i}$ | $\mathcal{S}$ (complementary sphere) |
> 
> ![Attaching和Complementary](14-Smale_s_work.png)

> [!important] 🎯 Thom 横截性定理
> 
> 对三元组 $(W, M, N)$（$M, N$ 是 $W$ 的子流形）：
> 
> 1. 可做微小扰动（同痕），使 $M, N$ **横截相交**
> 2. 横截相交时：$\dim M + \dim N = \dim W + \dim(M \cap N)$
> 
> ---
> 
> **🔍 例**：$\dim W = 3$，$\dim M = \dim N = 1$
> 
> $$\dim(M \cap N) = 1 + 1 - 3 = -1 \implies M \cap N = \varnothing$$
> 
> 💡 **启示**：通过控制维数可保证子流形不相交！

> [!note] 📜 Lemma 2：顺序引理
> 
> 考虑 $(M + h_1) + h_2$。若 $h_2$ 的粘接球面 $\mathscr{S}$ 与 $h_1$ 的补球面 $\mathcal{S}$ **不相交**，则可交换顺序：
> $$\boxed{(M + h_1) + h_2 \cong (M + h_2) + h_1}$$
> 记作 $M + (h_1 \sqcup h_2)$。
> 
> **证明**：不相交时，可在 $\partial(M + h_1)$ 上挖去 $\mathcal{S}$，将 $\partial^- h_2$ 收缩到 $\partial M$。
> 
> ![顺序引理证明](17-Smale_s_work.png)

> [!note] 📜 Coro
> 
> 若 $\mathrm{index}(h_2) \leq \mathrm{index}(h_1)$，则
> $$M + h_1 + h_2 = M + h_2 + h_1$$
> 
> 💡 即：总可从 **index 更小**的 handle 开始粘接！
> 
> **证明**：设 $\mathrm{index}(h_1) = i_1 \geq i_2 = \mathrm{index}(h_2)$。
> 
> - 补球面维数：$(n - i_1) - 1$
> - 粘接球面维数：$i_2 - 1$  
> - 维数和：$\leq n - 2 < \dim \partial(M + h_1) = n - 1$
> 
> 由 Thom 横截性，相交维数 $= -1$，即不相交。$\blacksquare$

> 📌 **约定**：以后总按 index 从小到大粘接。Index 相同时顺序可交换。

**标准分解**：

![标准分解1](24-Smale_s_work.png)

![标准分解2](26-Smale_s_work.png)

---

### 2.2.3 几何与代数消解

> [!example] 🔍 例：几何消解
> 
> 粘接相邻维数的 handle 时，可能出现消解：
> 
> ![几何消解1](15-Smale_s_work.png)
> 
> 在 $M$ 上粘 0-handle $h_1$ 和 1-handle $h_2$，结果收缩到 $M$。
> 
> 🔑 **关键**：$h_1$ 的补球面与 $h_2$ 的粘接球面恰好**相交于 1 点**！
> 
> ![几何消解2](16-Smale_s_work.png)

> [!note] 📜 Lemma 3：几何消解
> 
> 对于 $M + h_1 + h_2$，若 $\mathscr{S}$ 与 $\mathcal{S}$ **恰好横截相交于一点**，则
> $$\boxed{M + h_1 + h_2 \cong M}$$
> 
> ⚠️ 由 Thom 定理，仅当 $\mathrm{index}(h_2) = \mathrm{index}(h_1) + 1$ 时发生。
> 
> ---
> 
> **证明**：将 $h_1, h_2$ 分割成三部分 $A, B, C$（都是 $D^3$）：
> 
> ![分割1](18-Smale_s_work.png)
> 
> ![分割2](19-Smale_s_work.png)
> 
> 粘接 = $((M \cup A) \cup B) \cup C$。关注交集：
> 
> ![交集](21-Smale_s_work.png)
> 
> 沿 $D^2$ 粘 $D^3$ 不改变拓扑（立方体放桌面）：
> 
> ![拓扑不变](22-Smale_s_work.png)
> 
> 故 $M + h_1 + h_2 \cong M$。$\blacksquare$

> [!note] 📜 Lemma 4：代数消解 (Whitney Trick)
> 
> 考虑**代数相交数** $\displaystyle\sigma(\mathcal{S}, \mathscr{S}) := \sum_{x \in \mathscr{S} \cap \mathcal{S}} \sigma(x)$
> 
> ---
> 
> **条件**：
> - $N = \partial(M + h_1)$ 单连通
> - $\dim M = n \geq 6$
> - $\mathrm{index}(h_1) = i$ 满足 $2 \leq i \leq n - 3$
> 
> **结论**：若代数相交数 $= \pm 1$，可同痕使几何相交数 $= 1$，从而 $M + h_1 + h_2 \cong M$。
> 
> ---
> 
> **证明**：只需消去相邻的、符号相反的两交点 $x, y$：
> 
> ![Whitney trick](23-Smale_s_work.png)
> 
> 1. 在 $\mathscr{S}$ 和 $\mathcal{S}$ 上分别用 arc 连接 $x, y$（arc 在 $x, y$ 外不相交）→ 得 loop
> 2. 由 $N$ 单连通 → loop bounds $D^2$
> 3. 由 Whitney 嵌入定理 + $n \geq 6$ → $D^2$ 光滑嵌入
>    - *嵌入说明*：$\dim N \geq 5$，两 disk 维数和 $= 4 < 5$，故不自交
> 4. 沿 $D^2$ 将 $\mathscr{S}$ "划出" → 交点 $-2$，代数相交数不变
> 5. 从最内层开始逐步操作 → 最终几何相交数 $= 1$
> 6. 用 Lemma 3 完成。$\blacksquare$

---

### 2.2.4 Handle Addition

*限制到只有 $i$-handle 和 $(i+1)$-handle 的情形。*

对于 $M + h_1^i + h_2^i + h_3^{i+1}$，若 $h_1, h_2$ 满足消解条件，得 $M + h_3$。但 **$h_3$ 的粘接球面如何变化**？

> [!info] 📐 定义：Incidence Matrix $D^{i+1}$
> 
> 设有 $m_i$ 个 $i$-handle（补球面 $\mathcal{S}_1, \ldots, \mathcal{S}_{m_i}$），$m_{i+1}$ 个 $(i+1)$-handle（粘接球面 $\mathscr{S}_1, \ldots, \mathscr{S}_{m_{i+1}}$）。
> 
> $$\boxed{D^{i+1}_{j,k} := \sigma(\mathcal{S}_j, \mathscr{S}_k)}$$
> 
> 得 $m_i \times m_{i+1}$ 矩阵，蕴含 handle 分解的**全部信息**。
> 
> 💡 **与同调的联系**：handle 分解 → cell 分解，微分 $C_{i+1} \to C_i$ 恰为 $D^{i+1}$。

> [!note] 📜 Lemma 5：Handle Addition
> 
> 可改变 $(i+1)$-handle 的 attaching sphere 而**保持结果不变**：
> 
> $$\mathscr{S}_1 \leadsto \mathscr{S}_1' = \mathscr{S}_1 \mathbin{\#} \mathscr{S}_2 \implies M +_{\mathscr{S}_1} h_1 + \cdots \cong M +_{\mathscr{S}_1'} h_1 + \cdots$$
> 
> ![Handle addition](30-Smale_s_work.png)
> 
> 🔑 **对关联矩阵**：第三类基本列变换（加法/减法均可）！
> 
> ---
> 
> **条件**：$2 \leq i \leq n - 3$
> 
> **证明**：
> 
> ![证明1](27-Smale_s_work.png)
> 
> ![证明2](28-Smale_s_work.png)
> 
> ---
> 
> *Index 限制的说明*：找 arc $\alpha$ 需避开粘接球面和补球面。
> 
> | 对象 | 维数 | 不相交条件 |
> |:---:|:---:|:---:|
> | 粘接球面 | $i - 1$ | $n - 1 > 1 + (i-1) \Rightarrow i \leq n-2$ |
> | 补球面 | $n - i$ | $n - 1 > (n-i) + 1 \Rightarrow i \geq 3$ |
> 
> 综合：$3 \leq i \leq n - 2$，即 $2 \leq i - 1 \leq n - 3$。$\blacksquare$

---

### 2.2.5 h-Cobordism 定理的证明

> [!note] 📜 Prop 2.42
> 
> ![Prop 2.42](33-Smale_s_work.png)
> 
> 💡 **动机**：Lemma 4, 5 要求 $2 \leq i \leq n - 3$，故 handle index 落在 $[2, n-2]$。需先找到 **regular form**（排除区间外的 handle）。

> [!tip] ✏️ h-Cobordism 定理的证明
> 
> 设 $W^n$ 是 h-cobordism，取 regular 分解：$W = \partial^- W \times I + h_1 + \cdots + h_m$。
> 
> ---
> 
> **🎯 核心命题**：若 $m > 0$，存在 handle 更少的 regular 分解。
> 
> > 若成立，取 $m$ 最小者 → $m = 0$ → $W = \partial^- W \times I$。✓
> 
> ---
> 
> **命题证明**：
> 
> **Step 1️⃣** 设最小 index 为 $i - 1$，考虑所有 $(i-1)$-handle 和 $i$-handle。
> 
> **Step 2️⃣** 考虑 $H_{i-1}(W, \partial^- W)$：
> - 由同伦等价 → $= 0$
> - 由胞腔同调 $H_{i-1} = C_{i-1}/\mathrm{Im}(D^i)$ → $D^i$ **满射**（满秩）
> 
> **Step 3️⃣** 对 $D^i$ 做初等变换：
> 
> $$D^i \xrightarrow{\text{行列变换}} \text{上三角} \xrightarrow{\text{满射} \Rightarrow \text{对角}=\pm1} \text{对角矩阵}$$
> 
> ![矩阵变换1](32-Smale_s_work.png)
> 
> ![矩阵变换2](31-Smale_s_work.png)
> 
> **Step 4️⃣** 在对角矩阵上用 Lemma 3, 4 → handle 数减少。$\blacksquare$
> 
> ---
> 
> ⚠️ **补充命题**：
> - **命题 1** (Prop 2.42)：regular 分解存在
> - **命题 2**：$\pi_1(N_{i-1}) = 1$

---

> [!note] 📜 Lemma 2.45
> 
> ![Lemma 2.45](34-Smale_s_work.png)
> 
> 取 $X = A - \{0\} \simeq B$，$Y = \mathrm{int}(D^s)$，则 $X \cap Y = S^{s-1}$，$X \cup Y = A$。
> 
> 对 $(A, A-\{0\}, \mathrm{int}(D^s))$ 用 Van Kampen 即证。

> [!tip] ✏️ 命题 2 的证明：$\pi_1(N_{i-1}) = 1$
> 
> *策略*：分别将 $N_{i-1}$ 和 $W$ 与 $W_{i-1}$ 联系。
> 
> ---
> 
> **(I) $W$ 与 $W_{i-1}$**
> 
> $W = W_{i-1}$ + (index $\geq i \geq 3$ 的 handle) → $\pi_1(W) \cong \pi_1(W_{i-1})$
> 
> ---
> 
> **(II) $N_{i-1}$ 与 $W_{i-1}$**
> 
> 取对偶：$W_{i-1} = N_{i-1} \times I$ + (index $= n - (i-1) \geq 3$ 的 handle)
> 
> → $\pi_1(N_{i-1}) \cong \pi_1(W_{i-1})$
> 
> ---
> 
> **(III)** 由 $\pi_1(W) = 1$ → $\pi_1(N_{i-1}) = 1$。$\blacksquare$

---

> [!tip] ✏️ 命题 1 的证明：Regular Handle 分解总存在
> 
> **策略**：证 0, 1-handle 可消解 → 对偶 → $(n-1), n$-handle 也可消解。
> 
> ---
> 
> **🔄 对偶论证框架**
> 
> | 步骤 | 操作 | 结果 |
> |:---:|:---|:---:|
> | 1 | 消解 0, 1-handle | $t_1$ |
> | 2 | 对偶 | $t_2$ |
> | 3 | 消解 0, 1-handle（= $t_1$ 的 $n{-}1, n$） | $t_3$ |
> | 4 | 对偶 | $t_4$ ✓ |
> 
> ---
> 
> **🔹 消解 0-Handle**
> 
> 由 $H_0(W, \partial^- W) = 0$（空间连通），每个 0-handle 有**唯一** 1-handle 连接主体。
> 
> → $D^1$ 天然是**单位阵** → 直接消解所有 0-handle。
> 
> ---
> 
> **🔹 消解 1-Handle (Handle Trading)**
> 
> 🔑 **核心**：用 **3-handle 替换 1-handle**（总数不变）
> 
> **准备**：
> - 0-handle 已消解 → 1-handle 直接粘到 $\partial^- W \times I$，形成 loop
> - 在 $W_2$ 上考虑（与 $W$ 差 index $\geq 3$ 的 handle，基本群同）
> - 由命题 2 策略：$\partial^+ W_2$ 单连通
> 
> ---
> 
> **构造**：
> 
> **Step 1️⃣** 任取 1-handle $h_1$，其 loop 在 $\partial^+ W_2$ 上。由 $\pi_1 = 1$，bounds disk $D^2$（Thom + dim arg → embedded）。记 $\partial D^2 = \mathscr{S}_0$。
> 
> **Step 2️⃣** 由 Lemma 3，引入互相消解的 2-handle $h_2$ + 3-handle $h_3$，使 $W_2 = W_2 + h_2 + h_3$。要求 $h_2$ 避开 $D^2$ 和其他 2-handle。记粘接球面 $\mathscr{S}_2$。
> 
> **Step 3️⃣** 取 $\mathscr{S}_2' := \mathscr{S}_2 \mathbin{\#} \mathscr{S}_0$，对应 $h_2'$。
> 
> ![Handle trading](37-Smale_s_work.png)
> 
> ---
> 
> **🔑 关键观察**：
> - $\mathscr{S}_0$ bounds disk → $\mathscr{S}_2' \sim \mathscr{S}_2$
> - $\mathscr{S}_2'$ 与 $h_1$ 的补球面**几何相交数 = 1**
> 
> ---
> 
> **消解计算**：
> 
> $$\begin{aligned}
> W_2 &= W_2 + h_2 + h_3 \\[4pt]
>     &= W_2 + h_2' + h_3 \\[4pt]
>     &= \partial^- W \times I + \cdots + \underbrace{(h_1 + h_2')}_{\text{消解}} + \cdots + h_3 \\[4pt]
>     &= \partial^- W \times I + \cdots + h_3
> \end{aligned}$$
> 
> ---
> 
> $$\boxed{\text{1-handle } h_1 \leadsto \text{3-handle } h_3} \quad \blacksquare$$
