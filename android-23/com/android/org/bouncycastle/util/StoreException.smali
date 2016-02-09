.class public Lcom/android/org/bouncycastle/util/StoreException;
.super Ljava/lang/RuntimeException;
.source "StoreException.java"


# instance fields
.field private _e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 11
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/StoreException;->_e:Ljava/lang/Throwable;

    #@5
    .line 8
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/StoreException;->_e:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method
