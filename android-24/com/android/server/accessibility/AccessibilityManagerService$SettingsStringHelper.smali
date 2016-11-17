.class Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsStringHelper"
.end annotation


# static fields
.field private static final SETTINGS_DELIMITER:Ljava/lang/String; = ":"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsName:Ljava/lang/String;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;I)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1882
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1883
    iput p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mUserId:I

    #@7
    .line 1884
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mSettingsName:Ljava/lang/String;

    #@9
    .line 1885
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v3

    #@11
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    #@13
    .line 1887
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    #@15
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mSettingsName:Ljava/lang/String;

    #@17
    .line 1886
    invoke-static {v3, v4, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 1888
    .local v2, "servicesString":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    #@1d
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@20
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mServices:Ljava/util/Set;

    #@22
    .line 1889
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_0

    #@28
    .line 1891
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    #@2a
    const-string/jumbo v3, ":"

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v3

    #@32
    invoke-direct {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@35
    .line 1892
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    #@38
    .line 1893
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_0

    #@3e
    .line 1894
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    .line 1895
    .local v1, "serviceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mServices:Ljava/util/Set;

    #@44
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@47
    goto :goto_0

    #@48
    .line 1882
    .end local v0    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v1    # "serviceName":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addService(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mServices:Ljava/util/Set;

    #@2
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9
    .line 1900
    return-void
.end method

.method public deleteService(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mServices:Ljava/util/Set;

    #@2
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@9
    .line 1904
    return-void
.end method

.method public writeToSettings()V
    .locals 4

    #@0
    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mSettingsName:Ljava/lang/String;

    #@4
    .line 1910
    const-string/jumbo v2, ":"

    #@7
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mServices:Ljava/util/Set;

    #@9
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mUserId:I

    #@f
    .line 1909
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@12
    .line 1908
    return-void
.end method
