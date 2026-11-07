.class public final Landroid/app/ActivityManager$TaskDescription$Builder;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$TaskDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBackgroundColor:I

.field private blacklist mIconRes:I

.field private blacklist mLabel:Ljava/lang/String;

.field private blacklist mNavigationBarColor:I

.field private blacklist mPrimaryColor:I

.field private blacklist mStatusBarColor:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1865
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    .line 1867
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    .line 1869
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    .line 1870
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    .line 1871
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    .line 1872
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/ActivityManager$TaskDescription;
    .registers 18

    .line 1948
    move-object/from16 v0, p0

    iget v1, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_12

    .line 1949
    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    :goto_12
    move-object v4, v1

    .line 1950
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    iget-object v3, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    iget v5, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    iget v6, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    iget v7, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    iget v8, v0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-direct/range {v2 .. v16}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    return-object v2
.end method

.method public whitelist setBackgroundColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2
    .param p1, "color"    # I

    .line 1916
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mBackgroundColor:I

    .line 1917
    return-object p0
.end method

.method public whitelist setIcon(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2
    .param p1, "iconRes"    # I

    .line 1893
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mIconRes:I

    .line 1894
    return-object p0
.end method

.method public whitelist setLabel(Ljava/lang/String;)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2
    .param p1, "label"    # Ljava/lang/String;

    .line 1881
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mLabel:Ljava/lang/String;

    .line 1882
    return-object p0
.end method

.method public whitelist setNavigationBarColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2
    .param p1, "color"    # I

    .line 1938
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mNavigationBarColor:I

    .line 1939
    return-object p0
.end method

.method public whitelist setPrimaryColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2
    .param p1, "color"    # I

    .line 1904
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mPrimaryColor:I

    .line 1905
    return-object p0
.end method

.method public whitelist setStatusBarColor(I)Landroid/app/ActivityManager$TaskDescription$Builder;
    .registers 2
    .param p1, "color"    # I

    .line 1927
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription$Builder;->mStatusBarColor:I

    .line 1928
    return-object p0
.end method
