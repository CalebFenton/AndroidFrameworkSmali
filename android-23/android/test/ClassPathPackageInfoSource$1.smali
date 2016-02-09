.class Landroid/test/ClassPathPackageInfoSource$1;
.super Landroid/test/SimpleCache;
.source "ClassPathPackageInfoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/ClassPathPackageInfoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/test/SimpleCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/test/ClassPathPackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/ClassPathPackageInfoSource;


# direct methods
.method constructor <init>(Landroid/test/ClassPathPackageInfoSource;)V
    .locals 0
    .param p1, "this$0"    # Landroid/test/ClassPathPackageInfoSource;

    #@0
    .prologue
    .line 47
    iput-object p1, p0, Landroid/test/ClassPathPackageInfoSource$1;->this$0:Landroid/test/ClassPathPackageInfoSource;

    #@2
    invoke-direct {p0}, Landroid/test/SimpleCache;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected load(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Landroid/test/ClassPathPackageInfoSource$1;->this$0:Landroid/test/ClassPathPackageInfoSource;

    #@2
    invoke-static {v0, p1}, Landroid/test/ClassPathPackageInfoSource;->-wrap0(Landroid/test/ClassPathPackageInfoSource;Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 49
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "pkgName":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/test/ClassPathPackageInfoSource$1;->load(Ljava/lang/String;)Landroid/test/ClassPathPackageInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
