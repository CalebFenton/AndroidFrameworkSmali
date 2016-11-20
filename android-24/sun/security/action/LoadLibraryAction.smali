.class public Lsun/security/action/LoadLibraryAction;
.super Ljava/lang/Object;
.source "LoadLibraryAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
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
.field private theLib:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "theLib"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Lsun/security/action/LoadLibraryAction;->theLib:Ljava/lang/String;

    #@5
    .line 59
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 66
    invoke-virtual {p0}, Lsun/security/action/LoadLibraryAction;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lsun/security/action/LoadLibraryAction;->theLib:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@5
    .line 68
    const/4 v0, 0x0

    #@6
    return-object v0
.end method
