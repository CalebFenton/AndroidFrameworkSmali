.class public Lcom/android/server/pm/PersistentPreferredIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PersistentPreferredIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Lcom/android/server/pm/PersistentPreferredActivity;",
        "Lcom/android/server/pm/PersistentPreferredActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 29
    check-cast p2, Lcom/android/server/pm/PersistentPreferredActivity;

    #@2
    .end local p2    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PersistentPreferredActivity;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PersistentPreferredActivity;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/pm/PersistentPreferredActivity;

    #@0
    .prologue
    .line 30
    iget-object v0, p2, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    #@2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->newArray(I)[Lcom/android/server/pm/PersistentPreferredActivity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected newArray(I)[Lcom/android/server/pm/PersistentPreferredActivity;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 25
    new-array v0, p1, [Lcom/android/server/pm/PersistentPreferredActivity;

    #@2
    return-object v0
.end method
