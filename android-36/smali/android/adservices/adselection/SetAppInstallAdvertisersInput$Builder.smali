.class public final Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;
.super Ljava/lang/Object;
.source "SetAppInstallAdvertisersInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/SetAppInstallAdvertisersInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdvertisers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallerPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/SetAppInstallAdvertisersInput;
    .registers 5

    .line 134
    iget-object v0, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;->mAdvertisers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;->mCallerPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;

    iget-object v1, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;->mAdvertisers:Ljava/util/Set;

    iget-object v2, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;->mCallerPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;-><init>(Ljava/util/Set;Ljava/lang/String;Landroid/adservices/adselection/SetAppInstallAdvertisersInput-IA;)V

    return-object v0
.end method

.method public blacklist setAdvertisers(Ljava/util/Set;)Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;)",
            "Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;"
        }
    .end annotation

    .line 116
    .local p1, "advertisers":Ljava/util/Set;, "Ljava/util/Set<Landroid/adservices/common/AdTechIdentifier;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iput-object p1, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;->mAdvertisers:Ljava/util/Set;

    .line 118
    return-object p0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;
    .registers 2
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 125
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iput-object p1, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 128
    return-object p0
.end method
