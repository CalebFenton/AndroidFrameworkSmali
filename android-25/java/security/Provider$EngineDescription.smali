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
.field private volatile constructorParameterClass:Ljava/lang/Class;

.field final constructorParameterClassName:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final supportsParameter:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sp"    # Z
    .param p3, "paramName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 958
    iput-object p1, p0, Ljava/security/Provider$EngineDescription;->name:Ljava/lang/String;

    #@5
    .line 959
    iput-boolean p2, p0, Ljava/security/Provider$EngineDescription;->supportsParameter:Z

    #@7
    .line 960
    iput-object p3, p0, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    #@9
    .line 957
    return-void
.end method


# virtual methods
.method getConstructorParameterClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 963
    iget-object v0, p0, Ljava/security/Provider$EngineDescription;->constructorParameterClass:Ljava/lang/Class;

    #@2
    .line 964
    .local v0, "clazz":Ljava/lang/Class;
    if-nez v0, :cond_0

    #@4
    .line 965
    iget-object v1, p0, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    #@6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    .line 966
    iput-object v0, p0, Ljava/security/Provider$EngineDescription;->constructorParameterClass:Ljava/lang/Class;

    #@c
    .line 968
    :cond_0
    return-object v0
.end method
