.class final Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Level"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field keys:[I

.field levelBitsList:I

.field mask:I

.field shift:I

.field values:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

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
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->-assertionsDisabled:Z

    #@b
    .line 1182
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(II)V
    .locals 5
    .param p1, "levelBitsList"    # I
    .param p2, "shift"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1190
    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    #@7
    .line 1191
    iput p2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    #@9
    .line 1192
    and-int/lit8 v0, p1, 0xf

    #@b
    .line 1193
    .local v0, "bits":I
    sget-boolean v4, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->-assertionsDisabled:Z

    #@d
    if-nez v4, :cond_1

    #@f
    if-eqz v0, :cond_0

    #@11
    move v2, v3

    #@12
    :cond_0
    if-nez v2, :cond_1

    #@14
    new-instance v2, Ljava/lang/AssertionError;

    #@16
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@19
    throw v2

    #@1a
    .line 1194
    :cond_1
    shl-int v1, v3, v0

    #@1c
    .line 1195
    .local v1, "length":I
    add-int/lit8 v2, v1, -0x1

    #@1e
    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    #@20
    .line 1196
    new-array v2, v1, [I

    #@22
    iput-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    #@24
    .line 1197
    new-array v2, v1, [Ljava/lang/Object;

    #@26
    iput-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    #@28
    .line 1189
    return-void
.end method


# virtual methods
.method get(I)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1201
    iget v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    #@3
    shr-int v3, p1, v3

    #@5
    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    #@7
    and-int v0, v3, v4

    #@9
    .line 1202
    .local v0, "index":I
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    #@b
    aget v1, v3, v0

    #@d
    .line 1203
    .local v1, "k":I
    if-ne v1, p1, :cond_0

    #@f
    .line 1204
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    #@11
    aget-object v3, v3, v0

    #@13
    return-object v3

    #@14
    .line 1206
    :cond_0
    if-nez v1, :cond_1

    #@16
    .line 1207
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    #@18
    aget-object v2, v3, v0

    #@1a
    check-cast v2, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    #@1c
    .line 1208
    .local v2, "level":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    if-eqz v2, :cond_1

    #@1e
    .line 1209
    invoke-virtual {v2, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    return-object v3

    #@23
    .line 1212
    .end local v2    # "level":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    :cond_1
    return-object v5
.end method

.method putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # I
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "size"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1216
    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    #@3
    shr-int v4, p1, v4

    #@5
    iget v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    #@7
    and-int v1, v4, v5

    #@9
    .line 1217
    .local v1, "index":I
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    #@b
    aget v2, v4, v1

    #@d
    .line 1218
    .local v2, "k":I
    if-ne v2, p1, :cond_0

    #@f
    .line 1219
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    #@11
    invoke-static {v4, v1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-wrap1([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    return-object v4

    #@16
    .line 1221
    :cond_0
    if-nez v2, :cond_3

    #@18
    .line 1222
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    #@1a
    aget-object v3, v4, v1

    #@1c
    check-cast v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    #@1e
    .line 1223
    .local v3, "level":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    if-eqz v3, :cond_1

    #@20
    .line 1224
    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    return-object v4

    #@25
    .line 1226
    :cond_1
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    #@27
    aput p1, v4, v1

    #@29
    .line 1227
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    #@2b
    invoke-static {p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-wrap0(I)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_2

    #@31
    move-object v4, p2

    #@32
    :goto_0
    aput-object v4, v5, v1

    #@34
    .line 1228
    return-object p2

    #@35
    .line 1227
    :cond_2
    new-instance v4, Ljava/lang/ref/SoftReference;

    #@37
    invoke-direct {v4, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@3a
    goto :goto_0

    #@3b
    .line 1232
    .end local v3    # "level":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    :cond_3
    new-instance v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    #@3d
    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    #@3f
    shr-int/lit8 v4, v4, 0x4

    #@41
    iget v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    #@43
    iget v6, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    #@45
    and-int/lit8 v6, v6, 0xf

    #@47
    add-int/2addr v5, v6

    #@48
    invoke-direct {v3, v4, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;-><init>(II)V

    #@4b
    .line 1233
    .restart local v3    # "level":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    iget v4, v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    #@4d
    shr-int v4, v2, v4

    #@4f
    iget v5, v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    #@51
    and-int v0, v4, v5

    #@53
    .line 1234
    .local v0, "i":I
    iget-object v4, v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    #@55
    aput v2, v4, v0

    #@57
    .line 1235
    iget-object v4, v3, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    #@59
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    #@5b
    aget-object v5, v5, v1

    #@5d
    aput-object v5, v4, v0

    #@5f
    .line 1236
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    #@61
    aput v7, v4, v1

    #@63
    .line 1237
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    #@65
    aput-object v3, v4, v1

    #@67
    .line 1238
    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    #@6a
    move-result-object v4

    #@6b
    return-object v4
.end method
