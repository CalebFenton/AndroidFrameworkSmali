.class Ljava/io/ObjectInputStream$ValidationList$1;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectInputStream$ValidationList;->doCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/io/ObjectInputStream$ValidationList;


# direct methods
.method constructor blacklist <init>(Ljava/io/ObjectInputStream$ValidationList;)V
    .registers 2
    .param p1, "this$0"    # Ljava/io/ObjectInputStream$ValidationList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2602
    iput-object p1, p0, Ljava/io/ObjectInputStream$ValidationList$1;->this$0:Ljava/io/ObjectInputStream$ValidationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2602
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$ValidationList$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 2604
    iget-object v0, p0, Ljava/io/ObjectInputStream$ValidationList$1;->this$0:Ljava/io/ObjectInputStream$ValidationList;

    invoke-static {v0}, Ljava/io/ObjectInputStream$ValidationList;->-$$Nest$fgetlist(Ljava/io/ObjectInputStream$ValidationList;)Ljava/io/ObjectInputStream$ValidationList$Callback;

    move-result-object v0

    iget-object v0, v0, Ljava/io/ObjectInputStream$ValidationList$Callback;->obj:Ljava/io/ObjectInputValidation;

    invoke-interface {v0}, Ljava/io/ObjectInputValidation;->validateObject()V

    .line 2605
    const/4 v0, 0x0

    return-object v0
.end method
