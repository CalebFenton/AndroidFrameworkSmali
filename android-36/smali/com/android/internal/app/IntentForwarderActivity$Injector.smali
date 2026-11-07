.class public interface abstract Lcom/android/internal/app/IntentForwarderActivity$Injector;
.super Ljava/lang/Object;
.source "IntentForwarderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IntentForwarderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Injector"
.end annotation


# virtual methods
.method public abstract blacklist getIPackageManager()Landroid/content/pm/IPackageManager;
.end method

.method public abstract blacklist getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract blacklist getUserManager()Landroid/os/UserManager;
.end method

.method public abstract blacklist resolveActivityAsUser(Landroid/content/Intent;II)Ljava/util/concurrent/CompletableFuture;
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
.end method

.method public abstract blacklist showToast(Ljava/lang/String;I)V
.end method
