.class public Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;
.super Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoriesIterGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator",
        "<",
        "Ljava/lang/String;",
        ">;"
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
    .line 10414
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;->this$1:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    #@2
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

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
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 10417
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->categoriesIterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
