.class public final Landroid/service/notification/Adjustment;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/Adjustment$Types;,
        Landroid/service/notification/Adjustment$Keys;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/Adjustment;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist KEY_CONTEXTUAL_ACTIONS:Ljava/lang/String; = "key_contextual_actions"

.field public static final greylist-max-o KEY_GROUP_KEY:Ljava/lang/String; = "key_group_key"

.field public static final whitelist KEY_IMPORTANCE:Ljava/lang/String; = "key_importance"

.field public static final whitelist KEY_IMPORTANCE_PROPOSAL:Ljava/lang/String; = "key_importance_proposal"

.field public static final whitelist KEY_NOT_CONVERSATION:Ljava/lang/String; = "key_not_conversation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_PEOPLE:Ljava/lang/String; = "key_people"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_RANKING_SCORE:Ljava/lang/String; = "key_ranking_score"

.field public static final whitelist KEY_SENSITIVE_CONTENT:Ljava/lang/String; = "key_sensitive_content"

.field public static final whitelist KEY_SNOOZE_CRITERIA:Ljava/lang/String; = "key_snooze_criteria"

.field public static final blacklist KEY_SUMMARIZATION:Ljava/lang/String; = "key_summarization"

.field public static final whitelist KEY_TEXT_REPLIES:Ljava/lang/String; = "key_text_replies"

.field public static final whitelist KEY_TYPE:Ljava/lang/String; = "key_type"

.field public static final whitelist KEY_USER_SENTIMENT:Ljava/lang/String; = "key_user_sentiment"

.field public static final whitelist TYPE_CONTENT_RECOMMENDATION:I = 0x4

.field public static final whitelist TYPE_NEWS:I = 0x3

.field public static final whitelist TYPE_OTHER:I = 0x0

.field public static final whitelist TYPE_PROMOTION:I = 0x1

.field public static final whitelist TYPE_SOCIAL_MEDIA:I = 0x2


# instance fields
.field private final greylist-max-o mExplanation:Ljava/lang/CharSequence;

.field private blacklist mIssuer:Ljava/lang/String;

.field private final greylist-max-o mKey:Ljava/lang/String;

.field private final greylist-max-o mPackage:Ljava/lang/String;

.field private final greylist-max-o mSignals:Landroid/os/Bundle;

.field private final greylist-max-o mUser:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 299
    new-instance v0, Landroid/service/notification/Adjustment$1;

    invoke-direct {v0}, Landroid/service/notification/Adjustment$1;-><init>()V

    sput-object v0, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    goto :goto_14

    .line 282
    :cond_12
    iput-object v1, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    .line 284
    :goto_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_21

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    goto :goto_23

    .line 287
    :cond_21
    iput-object v1, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    .line 289
    :goto_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_30

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    goto :goto_32

    .line 292
    :cond_30
    iput-object v1, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    .line 294
    :goto_32
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "signals"    # Landroid/os/Bundle;
    .param p4, "explanation"    # Ljava/lang/CharSequence;
    .param p5, "user"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    .line 249
    iput-object p3, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    .line 250
    iput-object p4, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    .line 251
    iput p5, p0, Landroid/service/notification/Adjustment;->mUser:I

    .line 252
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "signals"    # Landroid/os/Bundle;
    .param p4, "explanation"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    .line 268
    iput-object p2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    .line 269
    iput-object p3, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    .line 270
    iput-object p4, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    .line 271
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    .line 272
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExplanation()Ljava/lang/CharSequence;
    .registers 2

    .line 320
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getIssuer()Ljava/lang/String;
    .registers 2

    .line 382
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 2

    .line 316
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackage()Ljava/lang/String;
    .registers 2

    .line 312
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSignals()Landroid/os/Bundle;
    .registers 2

    .line 324
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getUser()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 330
    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    return v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 334
    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setIssuer(Ljava/lang/String;)V
    .registers 2
    .param p1, "issuer"    # Ljava/lang/String;

    .line 377
    iput-object p1, p0, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adjustment{mSignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 344
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 345
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_12

    .line 348
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    :goto_12
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 351
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_22

    .line 354
    :cond_1f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    :goto_22
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2f

    .line 357
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 360
    :cond_2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    :goto_32
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 363
    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    return-void
.end method
