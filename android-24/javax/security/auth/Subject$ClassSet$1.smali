.class Ljavax/security/auth/Subject$ClassSet$1;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject$ClassSet;->populateSet()V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavax/security/auth/Subject$ClassSet;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject$ClassSet;Ljava/util/Iterator;)V
    .locals 0

    #@0
    .prologue
    .line 1353
    .local p1, "this$1":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    .local p2, "val$iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$ClassSet$1;->this$1:Ljavax/security/auth/Subject$ClassSet;

    #@2
    iput-object p2, p0, Ljavax/security/auth/Subject$ClassSet$1;->val$iterator:Ljava/util/Iterator;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1355
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet$1;->val$iterator:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
