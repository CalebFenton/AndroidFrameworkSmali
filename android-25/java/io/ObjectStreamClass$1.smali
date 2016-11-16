.class Ljava/io/ObjectStreamClass$1;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectStreamClass;->getSerialVersionUID()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/io/ObjectStreamClass;


# direct methods
.method constructor <init>(Ljava/io/ObjectStreamClass;)V
    .locals 0
    .param p1, "this$0"    # Ljava/io/ObjectStreamClass;

    #@0
    .prologue
    .line 237
    iput-object p1, p0, Ljava/io/ObjectStreamClass$1;->this$0:Ljava/io/ObjectStreamClass;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Long;
    .locals 2

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Ljava/io/ObjectStreamClass$1;->this$0:Ljava/io/ObjectStreamClass;

    #@2
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->-get0(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->-wrap8(Ljava/lang/Class;)J

    #@9
    move-result-wide v0

    #@a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 238
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$1;->run()Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
