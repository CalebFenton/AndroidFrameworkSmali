.class public final Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;
.super Ljava/lang/Object;
.source "PersistAdSelectionResultInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/PersistAdSelectionResultInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdSelectionId:J

.field private blacklist mAdSelectionResult:[B

.field private blacklist mCallerPackageName:Ljava/lang/String;

.field private blacklist mSeller:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/PersistAdSelectionResultInput;
    .registers 10

    .line 210
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->mCallerPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-wide v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->mAdSelectionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Non-zero ad selection ID must be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 214
    new-instance v2, Landroid/adservices/adselection/PersistAdSelectionResultInput;

    iget-wide v3, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->mAdSelectionId:J

    iget-object v5, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v6, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->mAdSelectionResult:[B

    iget-object v7, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->mCallerPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/adservices/adselection/PersistAdSelectionResultInput;-><init>(JLandroid/adservices/common/AdTechIdentifier;[BLjava/lang/String;Landroid/adservices/adselection/PersistAdSelectionResultInput-IA;)V

    return-object v2
.end method

.method public blacklist setAdSelectionId(J)Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;
    .registers 3
    .param p1, "adSelectionId"    # J

    .line 168
    iput-wide p1, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->mAdSelectionId:J

    .line 169
    return-object p0
.end method

.method public blacklist setAdSelectionResult([B)Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;
    .registers 3
    .param p1, "adSelectionResult"    # [B

    .line 183
    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz p1, :cond_d

    .line 184
    array-length v0, p1

    .line 185
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->mAdSelectionResult:[B

    goto :goto_10

    .line 187
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->mAdSelectionResult:[B

    .line 189
    :goto_10
    return-object p0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;
    .registers 2
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 196
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iput-object p1, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public blacklist setSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;
    .registers 2
    .param p1, "seller"    # Landroid/adservices/common/AdTechIdentifier;

    .line 175
    iput-object p1, p0, Landroid/adservices/adselection/PersistAdSelectionResultInput$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 176
    return-object p0
.end method
