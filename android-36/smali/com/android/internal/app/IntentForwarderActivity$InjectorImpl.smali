.class Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;
.super Ljava/lang/Object;
.source "IntentForwarderActivity.java"

# interfaces
.implements Lcom/android/internal/app/IntentForwarderActivity$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IntentForwarderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InjectorImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/IntentForwarderActivity;


# direct methods
.method public static synthetic blacklist $r8$lambda$DlrTq0vRez77WubVXtfCeVuXGE8(Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->lambda$resolveActivityAsUser$0(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/app/IntentForwarderActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 719
    iput-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/IntentForwarderActivity;Lcom/android/internal/app/IntentForwarderActivity-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    return-void
.end method

.method private synthetic blacklist lambda$resolveActivityAsUser$0(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 741
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 723
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 733
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 728
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method public blacklist resolveActivityAsUser(Landroid/content/Intent;II)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 740
    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;Landroid/content/Intent;II)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public blacklist showToast(Ljava/lang/String;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .line 746
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 747
    return-void
.end method
