.class public final Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;
.super Ljava/lang/Object;
.source "AdSelectionFromOutcomesInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/AdSelectionFromOutcomesInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

.field private blacklist mCallerPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/AdSelectionFromOutcomesInput;
    .registers 5

    .line 156
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;->mCallerPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    iget-object v2, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;->mCallerPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;-><init>(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Ljava/lang/String;Landroid/adservices/adselection/AdSelectionFromOutcomesInput-IA;)V

    return-object v0
.end method

.method public blacklist setAdSelectionFromOutcomesConfig(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;)Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;
    .registers 2
    .param p1, "adSelectionFromOutcomesConfig"    # Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    .line 137
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;->mAdSelectionFromOutcomesConfig:Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    .line 140
    return-object p0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;
    .registers 2
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionFromOutcomesInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 150
    return-object p0
.end method
