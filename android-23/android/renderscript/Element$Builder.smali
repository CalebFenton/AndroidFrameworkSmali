.class public Landroid/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArraySizes:[I

.field mCount:I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mSkipPadding:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1050
    iput-object p1, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@7
    .line 1051
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@a
    .line 1052
    new-array v0, v1, [Landroid/renderscript/Element;

    #@c
    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    #@e
    .line 1053
    new-array v0, v1, [Ljava/lang/String;

    #@10
    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    #@12
    .line 1054
    new-array v0, v1, [I

    #@14
    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    #@16
    .line 1049
    return-void
.end method


# virtual methods
.method public add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;
    .locals 1
    .param p1, "element"    # Landroid/renderscript/Element;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1108
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;
    .locals 7
    .param p1, "element"    # Landroid/renderscript/Element;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "arraySize"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1065
    if-ge p3, v6, :cond_0

    #@4
    .line 1066
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    #@6
    const-string/jumbo v4, "Array size cannot be less than 1."

    #@9
    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 1070
    :cond_0
    iget v3, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 1071
    const-string/jumbo v3, "#padding_"

    #@14
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 1072
    iput v5, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    #@1c
    .line 1073
    return-object p0

    #@1d
    .line 1077
    :cond_1
    iget v3, p1, Landroid/renderscript/Element;->mVectorSize:I

    #@1f
    const/4 v4, 0x3

    #@20
    if-ne v3, v4, :cond_3

    #@22
    .line 1078
    iput v6, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    #@24
    .line 1083
    :goto_0
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@26
    iget-object v4, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    #@28
    array-length v4, v4

    #@29
    if-ne v3, v4, :cond_2

    #@2b
    .line 1084
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@2d
    add-int/lit8 v3, v3, 0x8

    #@2f
    new-array v1, v3, [Landroid/renderscript/Element;

    #@31
    .line 1085
    .local v1, "e":[Landroid/renderscript/Element;
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@33
    add-int/lit8 v3, v3, 0x8

    #@35
    new-array v2, v3, [Ljava/lang/String;

    #@37
    .line 1086
    .local v2, "s":[Ljava/lang/String;
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@39
    add-int/lit8 v3, v3, 0x8

    #@3b
    new-array v0, v3, [I

    #@3d
    .line 1087
    .local v0, "as":[I
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    #@3f
    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@41
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@44
    .line 1088
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    #@46
    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@48
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4b
    .line 1089
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    #@4d
    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@4f
    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@52
    .line 1090
    iput-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    #@54
    .line 1091
    iput-object v2, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    #@56
    .line 1092
    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    #@58
    .line 1094
    .end local v0    # "as":[I
    .end local v1    # "e":[Landroid/renderscript/Element;
    .end local v2    # "s":[Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    #@5a
    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@5c
    aput-object p1, v3, v4

    #@5e
    .line 1095
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    #@60
    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@62
    aput-object p2, v3, v4

    #@64
    .line 1096
    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    #@66
    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@68
    aput p3, v3, v4

    #@6a
    .line 1097
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@6c
    add-int/lit8 v3, v3, 0x1

    #@6e
    iput v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@70
    .line 1098
    return-object p0

    #@71
    .line 1080
    :cond_3
    iput v5, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    #@73
    goto :goto_0
.end method

.method public create()Landroid/renderscript/Element;
    .locals 12

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1118
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    #@6
    .line 1119
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@8
    new-array v5, v1, [Landroid/renderscript/Element;

    #@a
    .line 1120
    .local v5, "ein":[Landroid/renderscript/Element;
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@c
    new-array v6, v1, [Ljava/lang/String;

    #@e
    .line 1121
    .local v6, "sin":[Ljava/lang/String;
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@10
    new-array v7, v1, [I

    #@12
    .line 1122
    .local v7, "asin":[I
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    #@14
    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@16
    invoke-static {v1, v9, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    .line 1123
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    #@1b
    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@1d
    invoke-static {v1, v9, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@20
    .line 1124
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    #@22
    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    #@24
    invoke-static {v1, v9, v7, v9, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@27
    .line 1126
    array-length v1, v5

    #@28
    new-array v8, v1, [J

    #@2a
    .line 1127
    .local v8, "ids":[J
    const/4 v0, 0x0

    #@2b
    .local v0, "ct":I
    :goto_0
    array-length v1, v5

    #@2c
    if-ge v0, v1, :cond_0

    #@2e
    .line 1128
    aget-object v1, v5, v0

    #@30
    iget-object v4, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@32
    invoke-virtual {v1, v4}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@35
    move-result-wide v10

    #@36
    aput-wide v10, v8, v0

    #@38
    .line 1127
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 1130
    :cond_0
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@3d
    invoke-virtual {v1, v8, v6, v7}, Landroid/renderscript/RenderScript;->nElementCreate2([J[Ljava/lang/String;[I)J

    #@40
    move-result-wide v2

    #@41
    .line 1131
    .local v2, "id":J
    new-instance v1, Landroid/renderscript/Element;

    #@43
    iget-object v4, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@45
    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V

    #@48
    return-object v1
.end method
