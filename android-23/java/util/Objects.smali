.class public final Ljava/util/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 33
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-ne p0, p1, :cond_0

    #@2
    .line 34
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 36
    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 46
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_2

    #@4
    .line 47
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_1
    const/4 v0, 0x0

    #@9
    goto :goto_0

    #@a
    .line 48
    :cond_2
    instance-of v0, p0, [Ljava/lang/Object;

    #@c
    if-eqz v0, :cond_3

    #@e
    instance-of v0, p1, [Ljava/lang/Object;

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 49
    check-cast p0, [Ljava/lang/Object;

    #@14
    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    #@16
    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    return v0

    #@1b
    .line 50
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [Z

    #@1d
    if-eqz v0, :cond_4

    #@1f
    instance-of v0, p1, [Z

    #@21
    if-eqz v0, :cond_4

    #@23
    .line 51
    check-cast p0, [Z

    #@25
    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, [Z

    #@27
    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    #@2a
    move-result v0

    #@2b
    return v0

    #@2c
    .line 52
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [B

    #@2e
    if-eqz v0, :cond_5

    #@30
    instance-of v0, p1, [B

    #@32
    if-eqz v0, :cond_5

    #@34
    .line 53
    check-cast p0, [B

    #@36
    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, [B

    #@38
    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    #@3b
    move-result v0

    #@3c
    return v0

    #@3d
    .line 54
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [C

    #@3f
    if-eqz v0, :cond_6

    #@41
    instance-of v0, p1, [C

    #@43
    if-eqz v0, :cond_6

    #@45
    .line 55
    check-cast p0, [C

    #@47
    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, [C

    #@49
    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    #@4c
    move-result v0

    #@4d
    return v0

    #@4e
    .line 56
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [D

    #@50
    if-eqz v0, :cond_7

    #@52
    instance-of v0, p1, [D

    #@54
    if-eqz v0, :cond_7

    #@56
    .line 57
    check-cast p0, [D

    #@58
    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, [D

    #@5a
    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    #@5d
    move-result v0

    #@5e
    return v0

    #@5f
    .line 58
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, [F

    #@61
    if-eqz v0, :cond_8

    #@63
    instance-of v0, p1, [F

    #@65
    if-eqz v0, :cond_8

    #@67
    .line 59
    check-cast p0, [F

    #@69
    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, [F

    #@6b
    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    #@6e
    move-result v0

    #@6f
    return v0

    #@70
    .line 60
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_8
    instance-of v0, p0, [I

    #@72
    if-eqz v0, :cond_9

    #@74
    instance-of v0, p1, [I

    #@76
    if-eqz v0, :cond_9

    #@78
    .line 61
    check-cast p0, [I

    #@7a
    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, [I

    #@7c
    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    #@7f
    move-result v0

    #@80
    return v0

    #@81
    .line 62
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [J

    #@83
    if-eqz v0, :cond_a

    #@85
    instance-of v0, p1, [J

    #@87
    if-eqz v0, :cond_a

    #@89
    .line 63
    check-cast p0, [J

    #@8b
    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, [J

    #@8d
    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    #@90
    move-result v0

    #@91
    return v0

    #@92
    .line 64
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_a
    instance-of v0, p0, [S

    #@94
    if-eqz v0, :cond_b

    #@96
    instance-of v0, p1, [S

    #@98
    if-eqz v0, :cond_b

    #@9a
    .line 65
    check-cast p0, [S

    #@9c
    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, [S

    #@9e
    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    #@a1
    move-result v0

    #@a2
    return v0

    #@a3
    .line 67
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v0

    #@a7
    return v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 74
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .locals 1
    .param p0, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 83
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 90
    if-nez p0, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v0

    #@8
    goto :goto_0
.end method

.method public static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 97
    .local p0, "o":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 100
    :cond_0
    return-object p0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 108
    .local p0, "o":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0

    #@8
    .line 111
    :cond_0
    return-object p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 118
    if-nez p0, :cond_0

    #@2
    const-string/jumbo v0, "null"

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "nullString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    if-nez p0, :cond_0

    #@2
    .end local p1    # "nullString":Ljava/lang/String;
    :goto_0
    return-object p1

    #@3
    .restart local p1    # "nullString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@6
    move-result-object p1

    #@7
    goto :goto_0
.end method
