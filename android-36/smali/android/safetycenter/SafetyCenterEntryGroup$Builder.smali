.class public final Landroid/safetycenter/SafetyCenterEntryGroup$Builder;
.super Ljava/lang/Object;
.source "SafetyCenterEntryGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterEntryGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mSeverityLevel:I

.field private blacklist mSeverityUnspecifiedIconType:I

.field private blacklist mSummary:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/safetycenter/SafetyCenterEntryGroup;)V
    .registers 4
    .param p1, "safetyCenterEntryGroup"    # Landroid/safetycenter/SafetyCenterEntryGroup;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mSeverityLevel:I

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mSeverityUnspecifiedIconType:I

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mEntries:Ljava/util/List;

    .line 211
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntryGroup;->-$$Nest$fgetmId(Landroid/safetycenter/SafetyCenterEntryGroup;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mId:Ljava/lang/String;

    .line 212
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntryGroup;->-$$Nest$fgetmTitle(Landroid/safetycenter/SafetyCenterEntryGroup;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 213
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntryGroup;->-$$Nest$fgetmSummary(Landroid/safetycenter/SafetyCenterEntryGroup;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 214
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntryGroup;->-$$Nest$fgetmSeverityLevel(Landroid/safetycenter/SafetyCenterEntryGroup;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mSeverityLevel:I

    .line 215
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntryGroup;->-$$Nest$fgetmSeverityUnspecifiedIconType(Landroid/safetycenter/SafetyCenterEntryGroup;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mSeverityUnspecifiedIconType:I

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntryGroup;->-$$Nest$fgetmEntries(Landroid/safetycenter/SafetyCenterEntryGroup;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mEntries:Ljava/util/List;

    .line 217
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mSeverityLevel:I

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mSeverityUnspecifiedIconType:I

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mEntries:Ljava/util/List;

    .line 203
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mId:Ljava/lang/String;

    .line 204
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 205
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/safetycenter/SafetyCenterEntryGroup;
    .registers 9

    .line 275
    new-instance v0, Landroid/safetycenter/SafetyCenterEntryGroup;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mSummary:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mSeverityLevel:I

    iget v5, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mSeverityUnspecifiedIconType:I

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mEntries:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/safetycenter/SafetyCenterEntryGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/util/List;Landroid/safetycenter/SafetyCenterEntryGroup-IA;)V

    .line 275
    return-object v0
.end method

.method public whitelist setEntries(Ljava/util/List;)Landroid/safetycenter/SafetyCenterEntryGroup$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterEntry;",
            ">;)",
            "Landroid/safetycenter/SafetyCenterEntryGroup$Builder;"
        }
    .end annotation

    .line 268
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterEntry;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mEntries:Ljava/util/List;

    .line 269
    return-object p0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/safetycenter/SafetyCenterEntryGroup$Builder;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mId:Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public whitelist setSeverityLevel(I)Landroid/safetycenter/SafetyCenterEntryGroup$Builder;
    .registers 3
    .param p1, "severityLevel"    # I

    .line 246
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntryGroup;->-$$Nest$smvalidateEntrySeverityLevel(I)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mSeverityLevel:I

    .line 247
    return-object p0
.end method

.method public whitelist setSeverityUnspecifiedIconType(I)Landroid/safetycenter/SafetyCenterEntryGroup$Builder;
    .registers 3
    .param p1, "severityUnspecifiedIconType"    # I

    .line 257
    nop

    .line 258
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntryGroup;->-$$Nest$smvalidateSeverityUnspecifiedIconType(I)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mSeverityUnspecifiedIconType:I

    .line 259
    return-object p0
.end method

.method public whitelist setSummary(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterEntryGroup$Builder;
    .registers 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 236
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 237
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterEntryGroup$Builder;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 229
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryGroup$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 230
    return-object p0
.end method
