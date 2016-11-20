.class Lsun/security/ssl/SunJSSE$1;
.super Ljava/lang/Object;
.source "SunJSSE.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/SunJSSE;->registerAlgorithms(Z)V
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
.field final synthetic this$0:Lsun/security/ssl/SunJSSE;

.field final synthetic val$isfips:Z


# direct methods
.method constructor <init>(Lsun/security/ssl/SunJSSE;Z)V
    .locals 0
    .param p1, "this$0"    # Lsun/security/ssl/SunJSSE;
    .param p2, "val$isfips"    # Z

    #@0
    .prologue
    .line 150
    iput-object p1, p0, Lsun/security/ssl/SunJSSE$1;->this$0:Lsun/security/ssl/SunJSSE;

    #@2
    iput-boolean p2, p0, Lsun/security/ssl/SunJSSE$1;->val$isfips:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lsun/security/ssl/SunJSSE$1;->this$0:Lsun/security/ssl/SunJSSE;

    #@2
    iget-boolean v1, p0, Lsun/security/ssl/SunJSSE$1;->val$isfips:Z

    #@4
    invoke-static {v0, v1}, Lsun/security/ssl/SunJSSE;->-wrap0(Lsun/security/ssl/SunJSSE;Z)V

    #@7
    .line 153
    const/4 v0, 0x0

    #@8
    return-object v0
.end method
