# What is Linear Algebra?
Area of mathematics that focuses on linear equations and their representations as vectors and matrices.

Important for many data science techniques

## Representation
$y = 3x + 1$ can be shown as $p(t) = (t,3t+1)$ 

Advantages of using this *parametric representation* 
1. Vertical lines can be defined as $p(t) = (1,t)$
2. Line segments can be defined by bounding t. $0 <= t <= 1$ for  $p(t) = (t,3t+1)$  would give us a line segment from (0, 1) to (1, 4) 

# Orthonormal
Two line segments that are perpendicular and have a length of 1.

Orthogonal: Perpendicular to one another
Normalized: Length is 1

Vectors are Orthogonal if $\vec{u} \cdot \vec{v} = 0$
# Vectors
*Point* : $p = (x,y)$ is a fixed position in a 2D space

*Vector*: $\vec{x} = [v_1, v_2]$ is a direction and length from some point

## Linear Combination
Adding two vectors with scalar multiplication to one or both of the vectors
$$ c\vec{u} + d\vec{v}$$
Example:
$$
2\begin{bmatrix} 1 \\ 4 \end{bmatrix} + -1 \begin{bmatrix} -3 \\ 0 \end{bmatrix} = \begin{bmatrix} 5 \\ 8 \end{bmatrix}
$$

## Dot Product
The sum of corresponding entries in two equal-length vectors $\vec{u}$ and $\vec{v}$,  <math xmlns="http://www.w3.org/1998/Math/MathML">
  <mstyle displaystyle="true" scriptlevel="0">
    <mrow data-mjx-texclass="ORD">
      <mover>
        <mi>u</mi>
        <mo stretchy="false">&#x2192;</mo>
      </mover>
    </mrow>
    <mo>&#x22C5;</mo>
    <mrow data-mjx-texclass="ORD">
      <mover>
        <mi>v</mi>
        <mo stretchy="false">&#x2192;</mo>
      </mover>
    </mrow>
    <mo>=</mo>
    <munder>
      <mo data-mjx-texclass="OP">&#x2211;</mo>
      <mrow data-mjx-texclass="ORD">
        <mi>i</mi>
        <mo>=</mo>
        <mn>1</mn>
      </mrow>
    </munder>
    <msub>
      <mi>u</mi>
      <mi>i</mi>
    </msub>
    <msub>
      <mi>v</mi>
      <mi>i</mi>
    </msub>
  </mstyle>
</math>
Example:
$$\begin{equation}

\vec{u} \cdot \vec{v} = \begin{bmatrix} 1 & 2 \end{bmatrix} \cdot
\begin{bmatrix} 4 \\ 5 \end{bmatrix} = (1)(4) + (2)(5) = 14

\end{equation}$$

## Length
**Length:**   The square root of a vector $\vec{v}$ dotted with itself, $\sqrt{\vec{v} \cdot \vec{v}}$

Example:
$$\begin{equation}

\left\lVert \vec{v} \right\rVert = \sqrt{\begin{bmatrix} 4 & 5
\end{bmatrix} \cdot \begin{bmatrix} 4 \\ 5 \end{bmatrix}} =
\sqrt{(4)(4) + (5)(5)} = \sqrt{41} = 6.4

\end{equation}$$
**Unit Vector:**   Vector is unit if its length is 1,$\left\lVert \vec{v} \right\rVert = 1$

Any vector can be converted to a unit vector by dividing entries by its length
Example:
$$\begin{equation}

\left\lVert \vec{v^{\prime}} \right\rVert = \sqrt{ 0.625^{2} +
0.781^{2} } = \sqrt{ 0.40 + 0.60 } = \sqrt{ 1.0 } = 1.0

\end{equation}$$


## Angle
**Angle:**   The cosine of the angle $\theta$ between $\vec{u}$ and $\vec{v}$ is the dot product of $\vec{u}$ and $\vec{v}$ divided by the product of and 's lengths, <math xmlns="http://www.w3.org/1998/Math/MathML">
  <mstyle displaystyle="true" scriptlevel="0">
    <mi>cos</mi>
    <mo data-mjx-texclass="NONE">&#x2061;</mo>
    <mo stretchy="false">(</mo>
    <mi>&#x3B8;</mi>
    <mo stretchy="false">)</mo>
    <mo>=</mo>
    <mfrac>
      <mrow>
        <mrow data-mjx-texclass="ORD">
          <mover>
            <mi>u</mi>
            <mo stretchy="false">&#x2192;</mo>
          </mover>
        </mrow>
        <mo>&#x22C5;</mo>
        <mrow data-mjx-texclass="ORD">
          <mover>
            <mi>v</mi>
            <mo stretchy="false">&#x2192;</mo>
          </mover>
        </mrow>
      </mrow>
      <mrow>
        <mrow data-mjx-texclass="INNER">
          <mo data-mjx-texclass="OPEN" symmetric="true">&#x2016;</mo>
          <mrow data-mjx-texclass="ORD">
            <mover>
              <mi>u</mi>
              <mo stretchy="false">&#x2192;</mo>
            </mover>
          </mrow>
          <mo data-mjx-texclass="CLOSE" symmetric="true">&#x2016;</mo>
        </mrow>
        <mrow data-mjx-texclass="INNER">
          <mo data-mjx-texclass="OPEN" symmetric="true">&#x2016;</mo>
          <mrow data-mjx-texclass="ORD">
            <mover>
              <mi>v</mi>
              <mo stretchy="false">&#x2192;</mo>
            </mover>
          </mrow>
          <mo data-mjx-texclass="CLOSE" symmetric="true">&#x2016;</mo>
        </mrow>
      </mrow>
    </mfrac>
  </mstyle>
</math>

Example:
![[Linear Algebra angle.png]]
$$\begin{align}
\begin{split}
\vec{u} \cdot \vec{v} &= (0)(2) + (1)(2) = 2\\
\left\lVert \vec{u} \right\rVert &= \sqrt{0^2 + 1^2} = 1\\
\left\lVert \vec{v} \right\rVert &= \sqrt{2^2 + 2^2} = 2.8284\\
\cos(\theta) &= \frac{2}{(1)(2.8284)} = 0.7071\\
\theta &= \arccos(0.7071) = 45^\circ\\
\end{split}
\end{align}$$
# Matrices
A _matrix_ is a rectangular combination of values arranged as $m$ rows and  $n$ columns. The size <math xmlns="http://www.w3.org/1998/Math/MathML">
  <mn>3</mn>
  <mo>&#xD7;</mo>
  <mn>2</mn>
</math> of a matrix is row major, so a matrix <math xmlns="http://www.w3.org/1998/Math/MathML">
  <mi>A</mi>
</math> has <math xmlns="http://www.w3.org/1998/Math/MathML">
  <mi>m</mi>
  <mo>=</mo>
  <mn>3</mn>
</math> rows and <math xmlns="http://www.w3.org/1998/Math/MathML">
  <mi>n</mi>
  <mo>=</mo>
  <mn>2</mn>
</math> columns $A = \begin{bmatrix} 1 & 2 \\ 3 & 4 \\ 5 & 6 \end{bmatrix}.$ 

## Transpose
Swaps rows and columns

**Transpose:**   Transposing a vector $\vec{v}$ converts it from column form to row form or vice-versa. Transposing a matrix <math xmlns="http://www.w3.org/1998/Math/MathML">
  <mi>A</mi>
</math> converts its columns to rows and its rows to columns. Intuitively, you can think of transpose as a 90° rotation of each row in order.
$$\begin{align}
\begin{split}

A = \begin{bmatrix} 1 & 0 & 0 \\ -1 & 1 & 0 \\ 0 & -1 & 0 \end{bmatrix}
& \quad \Rightarrow \quad
A^{T} = \begin{bmatrix} 1 & -1 & 0 \\ 0 & 1 & -1 \\ 0 & 0 & 0 \end{bmatrix}\\[8pt]

\begin{bmatrix}
\quad\quad R_1 \quad\quad \\
\quad\quad R_2 \quad\quad \\
\quad\quad \vdots \quad\quad \\
\quad\quad R_n \quad\quad \\
\end{bmatrix}
& \quad \Rightarrow \quad
\begin{bmatrix}
\\
R_1^{T} & R_2^{T} & \cdots & R_n^{T}\\
\\
\end{bmatrix}

\end{split}
\end{align}
$$

## Linear Combination
TODO: Come back to this 

# Quiz: Vectors and Matrices
![[Linear Algebraq1.png]]
$$
\begin{bmatrix} 4 + -2 \\ 1 + 2 \end{bmatrix} = \begin{bmatrix} 2 \\ 3 \end{bmatrix}
$$
![[Linear Algebraq2.png]]
$$
2 \cdot \begin{bmatrix} 1 \\ 3 \end{bmatrix} = \begin{bmatrix} 2 \\ 6 \end{bmatrix}
$$
![[Linear Algebraq4.png]]
$$
\begin{bmatrix} 2 \cdot 2 + 2 \cdot 4 \\ 3 \cdot 2 + -1 \cdot 4 \end{bmatrix} = \begin{bmatrix} 12 \\ 2 \end{bmatrix}
$$
*What is the difference between a point and a vector?*
A point is a physical location in (hyper)space. A vector is a direction and a distance.
# Quiz: Matrix Multiplication
![[Linear Algebraa2a1.png]]
$$
\begin{bmatrix} (1*6 + 3*1 + 9*2) \ (1*7 + 3*-4+9*3) \\ (2*6 + 7*1 + -1*2) \ (2*7 + 7*-4+-1*3) \end{bmatrix} = \begin{bmatrix} 27 \ 22 \\ 17 \ -17 \end{bmatrix}
$$