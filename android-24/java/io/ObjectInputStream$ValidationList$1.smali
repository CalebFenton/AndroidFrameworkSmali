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
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/io/ObjectInputStream$ValidationList;


# direct methods
.method constructor <init>(Ljava/io/ObjectInputStream$ValidationList;)V
    .locals 0
    .param p1, "this$1"    # Ljava/io/ObjectInputStream$ValidationList;

    #@0
    .prologue
    .line 2254
    iput-object p1, p0, Ljava/io/ObjectInputStream$ValidationList$1;->this$1:Ljava/io/ObjectInputStream$ValidationList;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 2256
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$ValidationList$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 2257
    iget-object v0, p0, Ljava/io/ObjectInputStream$ValidationList$1;->this$1:Ljava/io/ObjectInputStream$ValidationList;

    #@2
    invoke-static {v0}, Ljava/io/ObjectInputStream$ValidationList;->-get0(Ljava/io/ObjectInputStream$ValidationList;)Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@5
    move-result-object v0

    #@6
    iget-object v0, v0, Ljava/io/ObjectInputStream$ValidationList$Callback;->obj:Ljava/io/ObjectInputValidation;

    #@8
    invoke-interface {v0}, Ljava/io/ObjectInputValidation;->validateObject()V

    #@b
    .line 2258
    const/4 v0, 0x0

    #@c
    return-object v0
.end method
