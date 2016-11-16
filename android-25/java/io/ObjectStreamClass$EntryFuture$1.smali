.class Ljava/io/ObjectStreamClass$EntryFuture$1;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/io/ObjectStreamClass$EntryFuture;


# direct methods
.method constructor <init>(Ljava/io/ObjectStreamClass$EntryFuture;)V
    .locals 0
    .param p1, "this$1"    # Ljava/io/ObjectStreamClass$EntryFuture;

    #@0
    .prologue
    .line 422
    iput-object p1, p0, Ljava/io/ObjectStreamClass$EntryFuture$1;->this$1:Ljava/io/ObjectStreamClass$EntryFuture;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 423
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$EntryFuture$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 1

    #@0
    .prologue
    .line 424
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@7
    .line 425
    const/4 v0, 0x0

    #@8
    return-object v0
.end method
