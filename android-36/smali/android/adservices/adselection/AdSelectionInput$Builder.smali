.class public final Landroid/adservices/adselection/AdSelectionInput$Builder;
.super Ljava/lang/Object;
.source "AdSelectionInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/AdSelectionInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

.field private blacklist mCallerPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/AdSelectionInput;
    .registers 5

    .line 123
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionInput$Builder;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionInput$Builder;->mCallerPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Landroid/adservices/adselection/AdSelectionInput;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionInput$Builder;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    iget-object v2, p0, Landroid/adservices/adselection/AdSelectionInput$Builder;->mCallerPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/adselection/AdSelectionInput;-><init>(Landroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;Landroid/adservices/adselection/AdSelectionInput-IA;)V

    return-object v0
.end method

.method public blacklist setAdSelectionConfig(Landroid/adservices/adselection/AdSelectionConfig;)Landroid/adservices/adselection/AdSelectionInput$Builder;
    .registers 2
    .param p1, "adSelectionConfig"    # Landroid/adservices/adselection/AdSelectionConfig;

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionInput$Builder;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    .line 108
    return-object p0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/AdSelectionInput$Builder;
    .registers 2
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 114
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 117
    return-object p0
.end method
