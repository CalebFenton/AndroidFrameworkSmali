.class final Landroid/icu/impl/ICUConfig$1;
.super Ljava/lang/Object;
.source "ICUConfig.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fname:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val$fname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    iput-object p1, p0, Landroid/icu/impl/ICUConfig$1;->val$fname:Ljava/lang/String;

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
    .line 64
    invoke-virtual {p0}, Landroid/icu/impl/ICUConfig$1;->run()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/icu/impl/ICUConfig$1;->val$fname:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
