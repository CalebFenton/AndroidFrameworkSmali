.class Landroid/net/connectivity/org/chromium/base/BundleUtils$1;
.super Landroid/content/ContextWrapper;
.source "BundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/BundleUtils;->createContextForInflation(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$splitClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "arg0"    # Landroid/content/Context;

    .line 248
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/BundleUtils$1;->val$splitClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public whitelist getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 251
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/BundleUtils$1;->val$splitClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 256
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    .local v0, "ret":Ljava/lang/Object;
    const-string v1, "layout_inflater"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 258
    move-object v1, v0

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 260
    :cond_13
    return-object v0
.end method
