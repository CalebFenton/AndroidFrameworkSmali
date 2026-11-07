.class public final Landroid/app/smartspace/uitemplatedata/Text$Builder;
.super Ljava/lang/Object;
.source "Text.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMaxLines:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mTruncateAtType:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mText:Ljava/lang/CharSequence;

    .line 138
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mMaxLines:I

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/smartspace/uitemplatedata/Text;
    .registers 6

    .line 166
    new-instance v0, Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    iget v3, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mMaxLines:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/smartspace/uitemplatedata/Text;-><init>(Ljava/lang/CharSequence;Landroid/text/TextUtils$TruncateAt;ILandroid/app/smartspace/uitemplatedata/Text-IA;)V

    return-object v0
.end method

.method public whitelist setMaxLines(I)Landroid/app/smartspace/uitemplatedata/Text$Builder;
    .registers 2
    .param p1, "maxLines"    # I

    .line 157
    iput p1, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mMaxLines:I

    .line 158
    return-object p0
.end method

.method public whitelist setTruncateAtType(Landroid/text/TextUtils$TruncateAt;)Landroid/app/smartspace/uitemplatedata/Text$Builder;
    .registers 3
    .param p1, "truncateAtType"    # Landroid/text/TextUtils$TruncateAt;

    .line 148
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    .line 149
    return-object p0
.end method
