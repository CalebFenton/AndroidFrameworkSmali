.class public Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IterGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    #@0
    .prologue
    .line 10401
    .local p0, "this":Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;, "Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator<TE;>;"
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;->this$1:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public generate(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/util/Iterator;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ")",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 10403
    .local p0, "this":Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;, "Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator<TE;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
