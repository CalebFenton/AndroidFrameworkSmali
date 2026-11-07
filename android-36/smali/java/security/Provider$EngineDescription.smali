.class Ljava/security/Provider$EngineDescription;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EngineDescription"
.end annotation


# instance fields
.field private volatile greylist-max-o constructorParameterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final greylist-max-o constructorParameterClassName:Ljava/lang/String;

.field final greylist-max-o name:Ljava/lang/String;

.field final greylist-max-o supportsParameter:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sp"    # Z
    .param p3, "paramName"    # Ljava/lang/String;

    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1321
    iput-object p1, p0, Ljava/security/Provider$EngineDescription;->name:Ljava/lang/String;

    .line 1322
    iput-boolean p2, p0, Ljava/security/Provider$EngineDescription;->supportsParameter:Z

    .line 1323
    iput-object p3, p0, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    .line 1324
    return-void
.end method


# virtual methods
.method greylist-max-o getConstructorParameterClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1326
    iget-object v0, p0, Ljava/security/Provider$EngineDescription;->constructorParameterClass:Ljava/lang/Class;

    .line 1327
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_c

    .line 1328
    iget-object v1, p0, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1329
    iput-object v0, p0, Ljava/security/Provider$EngineDescription;->constructorParameterClass:Ljava/lang/Class;

    .line 1331
    :cond_c
    return-object v0
.end method
