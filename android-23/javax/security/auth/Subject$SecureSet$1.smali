.class Ljavax/security/auth/Subject$SecureSet$1;
.super Ljavax/security/auth/Subject$SecureSet$SecureIterator;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/security/auth/Subject$SecureSet",
        "<TSST;>.SecureIterator;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavax/security/auth/Subject$SecureSet;


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject$SecureSet;Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V
    .locals 0

    #@0
    .prologue
    .line 595
    .local p1, "this$1":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p2, "this$1_1":Ljavax/security/auth/Subject$SecureSet;, "Ljavax/security/auth/Subject$SecureSet<TSST;>;"
    .local p3, "$anonymous0":Ljava/util/Iterator;, "Ljava/util/Iterator<TSST;>;"
    iput-object p2, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    #@2
    invoke-direct {p0, p1, p3}, Ljavax/security/auth/Subject$SecureSet$SecureIterator;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    #@5
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSST;"
        }
    .end annotation

    #@0
    .prologue
    .line 602
    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet$1;->iterator:Ljava/util/Iterator;

    #@2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 603
    .local v0, "obj":Ljava/lang/Object;, "TSST;"
    return-object v0
.end method
