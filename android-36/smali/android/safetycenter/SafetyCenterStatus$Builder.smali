.class public final Landroid/safetycenter/SafetyCenterStatus$Builder;
.super Ljava/lang/Object;
.source "SafetyCenterStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRefreshStatus:I

.field private blacklist mSeverityLevel:I

.field private blacklist mSummary:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/safetycenter/SafetyCenterStatus;)V
    .registers 3
    .param p1, "safetyCenterStatus"    # Landroid/safetycenter/SafetyCenterStatus;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mSeverityLevel:I

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mRefreshStatus:I

    .line 242
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterStatus;->-$$Nest$fgetmTitle(Landroid/safetycenter/SafetyCenterStatus;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 243
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterStatus;->-$$Nest$fgetmSummary(Landroid/safetycenter/SafetyCenterStatus;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 244
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterStatus;->-$$Nest$fgetmSeverityLevel(Landroid/safetycenter/SafetyCenterStatus;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mSeverityLevel:I

    .line 245
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterStatus;->-$$Nest$fgetmRefreshStatus(Landroid/safetycenter/SafetyCenterStatus;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mRefreshStatus:I

    .line 246
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "summary"    # Ljava/lang/CharSequence;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mSeverityLevel:I

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mRefreshStatus:I

    .line 236
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 237
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 238
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/safetycenter/SafetyCenterStatus;
    .registers 7

    .line 284
    new-instance v0, Landroid/safetycenter/SafetyCenterStatus;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mSummary:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mSeverityLevel:I

    iget v4, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mRefreshStatus:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/safetycenter/SafetyCenterStatus;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/safetycenter/SafetyCenterStatus-IA;)V

    return-object v0
.end method

.method public whitelist setRefreshStatus(I)Landroid/safetycenter/SafetyCenterStatus$Builder;
    .registers 3
    .param p1, "refreshStatus"    # I

    .line 277
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterStatus;->-$$Nest$smvalidateRefreshStatus(I)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mRefreshStatus:I

    .line 278
    return-object p0
.end method

.method public whitelist setSeverityLevel(I)Landroid/safetycenter/SafetyCenterStatus$Builder;
    .registers 3
    .param p1, "severityLevel"    # I

    .line 268
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterStatus;->-$$Nest$smvalidateOverallSeverityLevel(I)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mSeverityLevel:I

    .line 269
    return-object p0
.end method

.method public whitelist setSummary(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterStatus$Builder;
    .registers 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 258
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 259
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterStatus$Builder;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 251
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterStatus$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 252
    return-object p0
.end method
