.class Landroid/icu/impl/ResourceBundleWrapper$2$1;
.super Ljava/lang/Object;
.source "ResourceBundleWrapper.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ResourceBundleWrapper$2;->load()Landroid/icu/impl/ResourceBundleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/impl/ResourceBundleWrapper$2;

.field final synthetic blacklist val$resName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/ResourceBundleWrapper$2;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Landroid/icu/impl/ResourceBundleWrapper$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Landroid/icu/impl/ResourceBundleWrapper$2$1;->this$0:Landroid/icu/impl/ResourceBundleWrapper$2;

    iput-object p2, p0, Landroid/icu/impl/ResourceBundleWrapper$2$1;->val$resName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/io/InputStream;
    .registers 3

    .line 195
    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper$2$1;->this$0:Landroid/icu/impl/ResourceBundleWrapper$2;

    iget-object v0, v0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-object v1, p0, Landroid/icu/impl/ResourceBundleWrapper$2$1;->val$resName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 192
    invoke-virtual {p0}, Landroid/icu/impl/ResourceBundleWrapper$2$1;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
