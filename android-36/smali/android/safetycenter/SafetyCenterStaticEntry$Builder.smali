.class public final Landroid/safetycenter/SafetyCenterStaticEntry$Builder;
.super Ljava/lang/Object;
.source "SafetyCenterStaticEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterStaticEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mSummary:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/safetycenter/SafetyCenterStaticEntry;)V
    .registers 3
    .param p1, "safetyCenterStaticEntry"    # Landroid/safetycenter/SafetyCenterStaticEntry;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterStaticEntry;->-$$Nest$fgetmTitle(Landroid/safetycenter/SafetyCenterStaticEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 162
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterStaticEntry;->-$$Nest$fgetmSummary(Landroid/safetycenter/SafetyCenterStaticEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 163
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterStaticEntry;->-$$Nest$fgetmPendingIntent(Landroid/safetycenter/SafetyCenterStaticEntry;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 164
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 155
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/safetycenter/SafetyCenterStaticEntry;
    .registers 6

    .line 190
    new-instance v0, Landroid/safetycenter/SafetyCenterStaticEntry;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;->mSummary:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/safetycenter/SafetyCenterStaticEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/safetycenter/SafetyCenterStaticEntry-IA;)V

    return-object v0
.end method

.method public whitelist setPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetyCenterStaticEntry$Builder;
    .registers 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 183
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 184
    return-object p0
.end method

.method public whitelist setSummary(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterStaticEntry$Builder;
    .registers 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 176
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 177
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterStaticEntry$Builder;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 169
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntry$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 170
    return-object p0
.end method
