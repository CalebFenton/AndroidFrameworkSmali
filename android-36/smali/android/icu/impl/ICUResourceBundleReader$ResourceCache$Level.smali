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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field greylist-max-o keys:[I

.field greylist-max-o levelBitsList:I

.field greylist-max-o mask:I

.field greylist-max-o shift:I

.field greylist-max-o values:[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1188
    const-class v0, Landroid/icu/impl/ICUResourceBundleReader;

    return-void
.end method

.method constructor greylist-max-o <init>(II)V
    .registers 6
    .param p1, "levelBitsList"    # I
    .param p2, "shift"    # I

    .line 1195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1196
    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    .line 1197
    iput p2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    .line 1198
    and-int/lit8 v0, p1, 0xf

    .line 1199
    .local v0, "bits":I
    nop

    .line 1200
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 1201
    .local v1, "length":I
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    .line 1202
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    .line 1203
    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    .line 1204
    return-void
.end method


# virtual methods
.method greylist-max-o get(I)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # I

    .line 1207
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    shr-int v0, p1, v0

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    and-int/2addr v0, v1

    .line 1208
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aget v1, v1, v0

    .line 1209
    .local v1, "k":I
    if-ne v1, p1, :cond_12

    .line 1210
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    return-object v2

    .line 1212
    :cond_12
    if-nez v1, :cond_21

    .line 1213
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    .line 1214
    .local v2, "level":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    if-eqz v2, :cond_21

    .line 1215
    invoke-virtual {v2, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->get(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1218
    .end local v2    # "level":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    :cond_21
    const/4 v2, 0x0

    return-object v2
.end method

.method greylist-max-o putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;
    .registers 10
    .param p1, "key"    # I
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "size"    # I

    .line 1222
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    shr-int v0, p1, v0

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    and-int/2addr v0, v1

    .line 1223
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aget v1, v1, v0

    .line 1224
    .local v1, "k":I
    if-ne v1, p1, :cond_14

    .line 1225
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    invoke-static {v2, v0, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-$$Nest$smputIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1227
    :cond_14
    if-nez v1, :cond_39

    .line 1228
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    .line 1229
    .local v2, "level":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    if-eqz v2, :cond_23

    .line 1230
    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1232
    :cond_23
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aput p1, v3, v0

    .line 1233
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    invoke-static {p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->-$$Nest$smstoreDirectly(I)Z

    move-result v4

    if-eqz v4, :cond_31

    move-object v4, p2

    goto :goto_36

    :cond_31
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_36
    aput-object v4, v3, v0

    .line 1234
    return-object p2

    .line 1238
    .end local v2    # "level":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    :cond_39
    new-instance v2, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    iget v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    shr-int/lit8 v3, v3, 0x4

    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    iget v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->levelBitsList:I

    and-int/lit8 v5, v5, 0xf

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;-><init>(II)V

    .line 1239
    .restart local v2    # "level":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    iget v3, v2, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->shift:I

    shr-int v3, v1, v3

    iget v4, v2, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->mask:I

    and-int/2addr v3, v4

    .line 1240
    .local v3, "i":I
    iget-object v4, v2, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    aput v1, v4, v3

    .line 1241
    iget-object v4, v2, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aget-object v5, v5, v0

    aput-object v5, v4, v3

    .line 1242
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->keys:[I

    const/4 v5, 0x0

    aput v5, v4, v0

    .line 1243
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->values:[Ljava/lang/Object;

    aput-object v2, v4, v0

    .line 1244
    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
