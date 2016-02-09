.class final Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final NEXT_BITS:I = 0x6

.field private static final ROOT_BITS:I = 0x7

.field private static final SIMPLE_LENGTH:I = 0x20


# instance fields
.field private keys:[I

.field private length:I

.field private levelBitsList:I

.field private maxOffsetBits:I

.field private rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

.field private values:[Ljava/lang/Object;


# direct methods
.method static synthetic -wrap0([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "values"    # [Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "size"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-assertionsDisabled:Z

    #@b
    .line 971
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(I)V
    .locals 7
    .param p1, "maxOffset"    # I

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    const/4 v5, 0x7

    #@3
    const/4 v4, 0x6

    #@4
    const/4 v2, 0x0

    #@5
    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 981
    new-array v3, v6, [I

    #@a
    iput-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    #@c
    .line 982
    new-array v3, v6, [Ljava/lang/Object;

    #@e
    iput-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    #@10
    .line 1070
    sget-boolean v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-assertionsDisabled:Z

    #@12
    if-nez v3, :cond_1

    #@14
    if-eqz p1, :cond_0

    #@16
    const/4 v2, 0x1

    #@17
    :cond_0
    if-nez v2, :cond_1

    #@19
    new-instance v2, Ljava/lang/AssertionError;

    #@1b
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1e
    throw v2

    #@1f
    .line 1071
    :cond_1
    const/16 v2, 0x1c

    #@21
    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    #@23
    .line 1072
    :goto_0
    const v2, 0x7ffffff

    #@26
    if-gt p1, v2, :cond_2

    #@28
    .line 1073
    shl-int/lit8 p1, p1, 0x1

    #@2a
    .line 1074
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    #@2c
    add-int/lit8 v2, v2, -0x1

    #@2e
    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    #@30
    goto :goto_0

    #@31
    .line 1076
    :cond_2
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    #@33
    add-int/lit8 v0, v2, 0x2

    #@35
    .line 1078
    .local v0, "keyBits":I
    if-gt v0, v5, :cond_3

    #@37
    .line 1079
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    #@39
    .line 1069
    :goto_1
    return-void

    #@3a
    .line 1080
    :cond_3
    const/16 v2, 0xa

    #@3c
    if-ge v0, v2, :cond_4

    #@3e
    .line 1081
    add-int/lit8 v2, v0, -0x3

    #@40
    or-int/lit8 v2, v2, 0x30

    #@42
    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    #@44
    goto :goto_1

    #@45
    .line 1083
    :cond_4
    iput v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    #@47
    .line 1084
    add-int/lit8 v0, v0, -0x7

    #@49
    .line 1085
    const/4 v1, 0x4

    #@4a
    .line 1087
    .local v1, "shift":I
    :goto_2
    if-gt v0, v4, :cond_5

    #@4c
    .line 1088
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    #@4e
    shl-int v3, v0, v1

    #@50
    or-int/2addr v2, v3

    #@51
    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    #@53
    goto :goto_1

    #@54
    .line 1090
    :cond_5
    const/16 v2, 0x9

    #@56
    if-ge v0, v2, :cond_6

    #@58
    .line 1091
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    #@5a
    add-int/lit8 v3, v0, -0x3

    #@5c
    or-int/lit8 v3, v3, 0x30

    #@5e
    shl-int/2addr v3, v1

    #@5f
    or-int/2addr v2, v3

    #@60
    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    #@62
    goto :goto_1

    #@63
    .line 1094
    :cond_6
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    #@65
    shl-int v3, v4, v1

    #@67
    or-int/2addr v2, v3

    #@68
    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    #@6a
    .line 1095
    add-int/lit8 v0, v0, -0x6

    #@6c
    .line 1096
    add-int/lit8 v1, v1, 0x4

    #@6e
    goto :goto_2
.end method

.method private findSimple(I)I
    .locals 6
    .param p1, "key"    # I

    #@0
    .prologue
    .line 1123
    const/4 v3, 0x0

    #@1
    .line 1124
    .local v3, "start":I
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    #@3
    .line 1125
    .local v1, "limit":I
    :goto_0
    sub-int v4, v1, v3

    #@5
    const/16 v5, 0x8

    #@7
    if-le v4, v5, :cond_2

    #@9
    .line 1126
    add-int v4, v3, v1

    #@b
    div-int/lit8 v2, v4, 0x2

    #@d
    .line 1127
    .local v2, "mid":I
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    #@f
    aget v4, v4, v2

    #@11
    if-ge p1, v4, :cond_0

    #@13
    .line 1128
    move v1, v2

    #@14
    goto :goto_0

    #@15
    .line 1130
    :cond_0
    move v3, v2

    #@16
    goto :goto_0

    #@17
    .line 1142
    .end local v2    # "mid":I
    .local v0, "k":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@19
    .line 1134
    .end local v0    # "k":I
    :cond_2
    if-ge v3, v1, :cond_4

    #@1b
    .line 1135
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    #@1d
    aget v0, v4, v3

    #@1f
    .line 1136
    .restart local v0    # "k":I
    if-ge p1, v0, :cond_3

    #@21
    .line 1137
    not-int v4, v3

    #@22
    return v4

    #@23
    .line 1139
    :cond_3
    if-ne p1, v0, :cond_1

    #@25
    .line 1140
    return v3

    #@26
    .line 1144
    .end local v0    # "k":I
    :cond_4
    not-int v4, v3

    #@27
    return v4
.end method

.method private makeKey(I)I
    .locals 4
    .param p1, "res"    # I

    #@0
    .prologue
    .line 1113
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    #@3
    move-result v1

    #@4
    .line 1115
    .local v1, "type":I
    const/4 v2, 0x6

    #@5
    if-ne v1, v2, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 1118
    .local v0, "miniType":I
    :goto_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap2(I)I

    #@b
    move-result v2

    #@c
    iget v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    #@e
    shl-int v3, v0, v3

    #@10
    or-int/2addr v2, v3

    #@11
    return v2

    #@12
    .line 1116
    .end local v0    # "miniType":I
    :cond_0
    const/4 v2, 0x5

    #@13
    if-ne v1, v2, :cond_1

    #@15
    const/4 v0, 0x3

    #@16
    .restart local v0    # "miniType":I
    goto :goto_0

    #@17
    .line 1117
    .end local v0    # "miniType":I
    :cond_1
    const/16 v2, 0x9

    #@19
    if-ne v1, v2, :cond_2

    #@1b
    const/4 v0, 0x2

    #@1c
    .restart local v0    # "miniType":I
    goto :goto_0

    #@1d
    .end local v0    # "miniType":I
    :cond_2
    const/4 v0, 0x0

    #@1e
    .restart local v0    # "miniType":I
    goto :goto_0
.end method

.method private static final putIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p0, "values"    # [Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "size"    # I

    #@0
    .prologue
    const/16 v4, 0x18

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 995
    aget-object v0, p0, p1

    #@6
    .line 996
    .local v0, "value":Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/ref/SoftReference;

    #@8
    if-nez v3, :cond_2

    #@a
    .line 997
    sget-boolean v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-assertionsDisabled:Z

    #@c
    if-nez v3, :cond_1

    #@e
    if-ge p3, v4, :cond_0

    #@10
    :goto_0
    if-nez v1, :cond_1

    #@12
    new-instance v1, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v1

    #@18
    :cond_0
    move v1, v2

    #@19
    goto :goto_0

    #@1a
    .line 998
    :cond_1
    return-object v0

    #@1b
    .line 1000
    :cond_2
    sget-boolean v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-assertionsDisabled:Z

    #@1d
    if-nez v3, :cond_4

    #@1f
    if-lt p3, v4, :cond_3

    #@21
    :goto_1
    if-nez v1, :cond_4

    #@23
    new-instance v1, Ljava/lang/AssertionError;

    #@25
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@28
    throw v1

    #@29
    :cond_3
    move v1, v2

    #@2a
    goto :goto_1

    #@2b
    .line 1001
    :cond_4
    check-cast v0, Ljava/lang/ref/SoftReference;

    #@2d
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    .line 1002
    .restart local v0    # "value":Ljava/lang/Object;
    if-eqz v0, :cond_5

    #@33
    .line 1003
    return-object v0

    #@34
    .line 1005
    :cond_5
    new-instance v1, Ljava/lang/ref/SoftReference;

    #@36
    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@39
    aput-object v1, p0, p1

    #@3b
    .line 1006
    return-object p2
.end method


# virtual methods
.method declared-synchronized get(I)Ljava/lang/Object;
    .locals 5
    .param p1, "res"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 1151
    :try_start_0
    sget-boolean v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-assertionsDisabled:Z

    #@5
    if-nez v3, :cond_1

    #@7
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap2(I)I

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    const/4 v2, 0x1

    #@e
    :cond_0
    if-nez v2, :cond_1

    #@10
    new-instance v2, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :catchall_0
    move-exception v2

    #@17
    monitor-exit p0

    #@18
    throw v2

    #@19
    .line 1153
    :cond_1
    :try_start_1
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    #@1b
    if-ltz v2, :cond_5

    #@1d
    .line 1154
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->findSimple(I)I

    #@20
    move-result v0

    #@21
    .line 1155
    .local v0, "index":I
    if-ltz v0, :cond_4

    #@23
    .line 1156
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    #@25
    aget-object v1, v2, v0

    #@27
    .line 1166
    .end local v0    # "index":I
    .local v1, "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, v1, Ljava/lang/ref/SoftReference;

    #@29
    if-eqz v2, :cond_3

    #@2b
    .line 1167
    check-cast v1, Ljava/lang/ref/SoftReference;

    #@2d
    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result-object v1

    #@31
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    monitor-exit p0

    #@32
    .line 1169
    return-object v1

    #@33
    .end local v1    # "value":Ljava/lang/Object;
    .restart local v0    # "index":I
    :cond_4
    monitor-exit p0

    #@34
    .line 1158
    return-object v4

    #@35
    .line 1161
    .end local v0    # "index":I
    :cond_5
    :try_start_2
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    #@37
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->makeKey(I)I

    #@3a
    move-result v3

    #@3b
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->get(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    move-result-object v1

    #@3f
    .line 1162
    .restart local v1    # "value":Ljava/lang/Object;
    if-nez v1, :cond_2

    #@41
    monitor-exit p0

    #@42
    .line 1163
    return-object v4
.end method

.method declared-synchronized putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .param p1, "res"    # I
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "size"    # I

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    monitor-enter p0

    #@3
    .line 1173
    :try_start_0
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    #@5
    if-ltz v2, :cond_5

    #@7
    .line 1174
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->findSimple(I)I

    #@a
    move-result v1

    #@b
    .line 1175
    .local v1, "index":I
    if-ltz v1, :cond_0

    #@d
    .line 1176
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    #@f
    invoke-static {v2, v1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-object v2

    #@13
    monitor-exit p0

    #@14
    return-object v2

    #@15
    .line 1177
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    #@17
    if-ge v2, v6, :cond_3

    #@19
    .line 1178
    not-int v1, v1

    #@1a
    .line 1179
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    #@1c
    if-ge v1, v2, :cond_1

    #@1e
    .line 1180
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    #@20
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    #@22
    add-int/lit8 v4, v1, 0x1

    #@24
    iget v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    #@26
    sub-int/2addr v5, v1

    #@27
    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@2a
    .line 1181
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    #@2c
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    #@2e
    add-int/lit8 v4, v1, 0x1

    #@30
    iget v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    #@32
    sub-int/2addr v5, v1

    #@33
    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@36
    .line 1183
    :cond_1
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    #@38
    add-int/lit8 v2, v2, 0x1

    #@3a
    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    #@3c
    .line 1184
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    #@3e
    aput p1, v2, v1

    #@40
    .line 1185
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    #@42
    const/16 v2, 0x18

    #@44
    if-lt p3, v2, :cond_2

    #@46
    new-instance v2, Ljava/lang/ref/SoftReference;

    #@48
    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@4b
    :goto_0
    aput-object v2, v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    monitor-exit p0

    #@4e
    .line 1186
    return-object p2

    #@4f
    :cond_2
    move-object v2, p2

    #@50
    .line 1185
    goto :goto_0

    #@51
    .line 1189
    :cond_3
    :try_start_2
    new-instance v2, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    #@53
    iget v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    #@55
    const/4 v4, 0x0

    #@56
    invoke-direct {v2, v3, v4}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;-><init>(II)V

    #@59
    iput-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    #@5b
    .line 1190
    const/4 v0, 0x0

    #@5c
    .local v0, "i":I
    :goto_1
    if-ge v0, v6, :cond_4

    #@5e
    .line 1191
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    #@60
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    #@62
    aget v3, v3, v0

    #@64
    invoke-direct {p0, v3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->makeKey(I)I

    #@67
    move-result v3

    #@68
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    #@6a
    aget-object v4, v4, v0

    #@6c
    const/4 v5, 0x0

    #@6d
    invoke-virtual {v2, v3, v4, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    #@70
    .line 1190
    add-int/lit8 v0, v0, 0x1

    #@72
    goto :goto_1

    #@73
    .line 1193
    :cond_4
    const/4 v2, 0x0

    #@74
    iput-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    #@76
    .line 1194
    const/4 v2, 0x0

    #@77
    iput-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    #@79
    .line 1195
    const/4 v2, -0x1

    #@7a
    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    #@7c
    .line 1198
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_5
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    #@7e
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->makeKey(I)I

    #@81
    move-result v3

    #@82
    invoke-virtual {v2, v3, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@85
    move-result-object v2

    #@86
    monitor-exit p0

    #@87
    return-object v2

    #@88
    :catchall_0
    move-exception v2

    #@89
    monitor-exit p0

    #@8a
    throw v2
.end method
