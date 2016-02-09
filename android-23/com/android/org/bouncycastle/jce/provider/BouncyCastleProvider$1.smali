.class Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$1;
.super Ljava/lang/Object;
.source "BouncyCastleProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->-wrap0(Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;)V

    #@5
    .line 149
    const/4 v0, 0x0

    #@6
    return-object v0
.end method
