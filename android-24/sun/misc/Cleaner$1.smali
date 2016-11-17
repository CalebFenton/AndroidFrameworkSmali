.class Lsun/misc/Cleaner$1;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/Cleaner;->clean()V
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
.field final synthetic this$0:Lsun/misc/Cleaner;

.field final synthetic val$x:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lsun/misc/Cleaner;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lsun/misc/Cleaner;
    .param p2, "val$x"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lsun/misc/Cleaner$1;->this$0:Lsun/misc/Cleaner;

    #@2
    iput-object p2, p0, Lsun/misc/Cleaner$1;->val$x:Ljava/lang/Throwable;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 145
    invoke-virtual {p0}, Lsun/misc/Cleaner$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 146
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 147
    new-instance v0, Ljava/lang/Error;

    #@7
    const-string/jumbo v1, "Cleaner terminated abnormally"

    #@a
    iget-object v2, p0, Lsun/misc/Cleaner$1;->val$x:Ljava/lang/Throwable;

    #@c
    invoke-direct {v0, v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    #@12
    .line 149
    :cond_0
    const/4 v0, 0x1

    #@13
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    #@16
    .line 150
    return-object v3
.end method
