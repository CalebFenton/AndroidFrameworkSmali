.class Ljava/util/ResourceBundle$RBClassLoader;
.super Ljava/lang/ClassLoader;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RBClassLoader"
.end annotation


# static fields
.field private static final greylist-max-o INSTANCE:Ljava/util/ResourceBundle$RBClassLoader;

.field private static final greylist-max-o loader:Ljava/lang/ClassLoader;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Ljava/util/ResourceBundle$RBClassLoader;
    .registers 1

    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->INSTANCE:Ljava/util/ResourceBundle$RBClassLoader;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 519
    new-instance v0, Ljava/util/ResourceBundle$RBClassLoader$1;

    invoke-direct {v0}, Ljava/util/ResourceBundle$RBClassLoader$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle$RBClassLoader;

    sput-object v0, Ljava/util/ResourceBundle$RBClassLoader;->INSTANCE:Ljava/util/ResourceBundle$RBClassLoader;

    .line 525
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 527
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 528
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/ResourceBundle-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/ResourceBundle$RBClassLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 536
    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_b

    .line 537
    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 539
    :cond_b
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 542
    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_b

    .line 543
    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 545
    :cond_b
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 530
    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_b

    .line 531
    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 533
    :cond_b
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
