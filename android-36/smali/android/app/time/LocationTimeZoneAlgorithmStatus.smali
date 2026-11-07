.class public final Landroid/app/time/LocationTimeZoneAlgorithmStatus;
.super Ljava/lang/Object;
.source "LocationTimeZoneAlgorithmStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/LocationTimeZoneAlgorithmStatus$ProviderStatus;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/LocationTimeZoneAlgorithmStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NOT_RUNNING:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

.field public static final blacklist NOT_SUPPORTED:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

.field public static final blacklist PROVIDER_STATUS_IS_CERTAIN:I = 0x3

.field public static final blacklist PROVIDER_STATUS_IS_UNCERTAIN:I = 0x4

.field public static final blacklist PROVIDER_STATUS_NOT_PRESENT:I = 0x1

.field public static final blacklist PROVIDER_STATUS_NOT_READY:I = 0x2

.field public static final blacklist RUNNING_NOT_REPORTED:Landroid/app/time/LocationTimeZoneAlgorithmStatus;


# instance fields
.field private final blacklist mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

.field private final blacklist mPrimaryProviderStatus:I

.field private final blacklist mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

.field private final blacklist mSecondaryProviderStatus:I

.field private final blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 93
    new-instance v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;-><init>(IILandroid/service/timezone/TimeZoneProviderStatus;ILandroid/service/timezone/TimeZoneProviderStatus;)V

    sput-object v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->NOT_SUPPORTED:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 100
    new-instance v1, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;-><init>(IILandroid/service/timezone/TimeZoneProviderStatus;ILandroid/service/timezone/TimeZoneProviderStatus;)V

    sput-object v1, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->RUNNING_NOT_REPORTED:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 107
    new-instance v2, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;-><init>(IILandroid/service/timezone/TimeZoneProviderStatus;ILandroid/service/timezone/TimeZoneProviderStatus;)V

    sput-object v2, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->NOT_RUNNING:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 263
    new-instance v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus$1;

    invoke-direct {v0}, Landroid/app/time/LocationTimeZoneAlgorithmStatus$1;-><init>()V

    sput-object v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/service/timezone/TimeZoneProviderStatus;ILandroid/service/timezone/TimeZoneProviderStatus;)V
    .registers 13
    .param p1, "status"    # I
    .param p2, "primaryProviderStatus"    # I
    .param p3, "primaryProviderReportedStatus"    # Landroid/service/timezone/TimeZoneProviderStatus;
    .param p4, "secondaryProviderStatus"    # I
    .param p5, "secondaryProviderReportedStatus"    # Landroid/service/timezone/TimeZoneProviderStatus;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {p1}, Landroid/app/time/DetectorStatusTypes;->requireValidDetectionAlgorithmStatus(I)I

    move-result v0

    iput v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    .line 130
    invoke-static {p2}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->requireValidProviderStatus(I)I

    move-result v0

    iput v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    .line 131
    iput-object p3, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    .line 132
    invoke-static {p4}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->requireValidProviderStatus(I)I

    move-result v0

    iput v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    .line 133
    iput-object p5, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    .line 135
    invoke-static {p2}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->hasProviderReported(I)Z

    move-result v0

    .line 136
    .local v0, "primaryProviderHasReported":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_23

    move v3, v1

    goto :goto_24

    :cond_23
    move v3, v2

    .line 137
    .local v3, "primaryProviderReportedStatusPresent":Z
    :goto_24
    if-nez v0, :cond_51

    if-nez v3, :cond_29

    goto :goto_51

    .line 138
    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "primaryProviderReportedStatus="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", primaryProviderStatus="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 141
    invoke-static {p2}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->providerStatusToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_51
    :goto_51
    invoke-static {p4}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->hasProviderReported(I)Z

    move-result v4

    .line 145
    .local v4, "secondaryProviderHasReported":Z
    if-eqz p5, :cond_58

    goto :goto_59

    :cond_58
    move v1, v2

    .line 146
    .local v1, "secondaryProviderReportedStatusPresent":Z
    :goto_59
    if-nez v4, :cond_86

    if-nez v1, :cond_5e

    goto :goto_86

    .line 147
    :cond_5e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "secondaryProviderReportedStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", secondaryProviderStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 150
    invoke-static {p4}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->providerStatusToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_86
    :goto_86
    const/4 v2, 0x3

    if-eq p1, v2, :cond_bf

    if-nez v0, :cond_8e

    if-nez v4, :cond_8e

    goto :goto_bf

    .line 156
    :cond_8e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "algorithmStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 157
    invoke-static {p1}, Landroid/app/time/DetectorStatusTypes;->detectionAlgorithmStatusToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", primaryProviderReportedStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", secondaryProviderReportedStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_bf
    :goto_bf
    return-void
.end method

.method private static blacklist hasProviderReported(I)Z
    .registers 2
    .param p0, "providerStatus"    # I

    .line 397
    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static blacklist parseCommandlineArg(Ljava/lang/String;)Landroid/app/time/LocationTimeZoneAlgorithmStatus;
    .registers 10
    .param p0, "arg"    # Ljava/lang/String;

    .line 224
    const-string v0, "LocationTimeZoneAlgorithmStatus\\{mAlgorithmStatus=(.+), mPrimaryProviderStatus=([^,]+), mPrimaryProviderReportedStatus=(null|TimeZoneProviderStatus\\{[^}]+\\}), mSecondaryProviderStatus=([^,]+), mSecondaryProviderReportedStatus=(null|TimeZoneProviderStatus\\{[^}]+\\})\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 232
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 233
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 236
    nop

    .line 237
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/time/DetectorStatusTypes;->detectionAlgorithmStatusFromString(Ljava/lang/String;)I

    move-result v4

    .line 238
    .local v4, "algorithmStatus":I
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->providerStatusFromString(Ljava/lang/String;)I

    move-result v5

    .line 239
    .local v5, "primaryProviderStatus":I
    nop

    .line 240
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->parseTimeZoneProviderStatusOrNull(Ljava/lang/String;)Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object v6

    .line 241
    .local v6, "primaryProviderReportedStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->providerStatusFromString(Ljava/lang/String;)I

    move-result v7

    .line 242
    .local v7, "secondaryProviderStatus":I
    nop

    .line 243
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->parseTimeZoneProviderStatusOrNull(Ljava/lang/String;)Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object v8

    .line 244
    .local v8, "secondaryProviderReportedStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    new-instance v3, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    invoke-direct/range {v3 .. v8}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;-><init>(IILandroid/service/timezone/TimeZoneProviderStatus;ILandroid/service/timezone/TimeZoneProviderStatus;)V

    return-object v3

    .line 234
    .end local v4    # "algorithmStatus":I
    .end local v5    # "primaryProviderStatus":I
    .end local v6    # "primaryProviderReportedStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    .end local v7    # "secondaryProviderStatus":I
    .end local v8    # "secondaryProviderReportedStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    :cond_46
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse algorithm status arg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist parseTimeZoneProviderStatusOrNull(Ljava/lang/String;)Landroid/service/timezone/TimeZoneProviderStatus;
    .registers 2
    .param p0, "providerReportedStatusString"    # Ljava/lang/String;

    .line 253
    const-string/jumbo v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 254
    const/4 v0, 0x0

    .local v0, "providerReportedStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    goto :goto_10

    .line 256
    .end local v0    # "providerReportedStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    :cond_b
    nop

    .line 257
    invoke-static {p0}, Landroid/service/timezone/TimeZoneProviderStatus;->parseProviderStatus(Ljava/lang/String;)Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object v0

    .line 259
    .restart local v0    # "providerReportedStatus":Landroid/service/timezone/TimeZoneProviderStatus;
    :goto_10
    return-object v0
.end method

.method public static blacklist providerStatusFromString(Ljava/lang/String;)I
    .registers 5
    .param p0, "providerStatusString"    # Ljava/lang/String;

    .line 378
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_74

    :cond_10
    goto :goto_39

    :sswitch_11
    const-string v0, "IS_UNCERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_3a

    :sswitch_1b
    const-string v0, "NOT_READY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_3a

    :sswitch_25
    const-string v0, "NOT_PRESENT"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_3a

    :sswitch_2f
    const-string v0, "IS_CERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_3a

    :goto_39
    const/4 v0, -0x1

    :goto_3a
    packed-switch v0, :pswitch_data_86

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :pswitch_56
    const/4 v0, 0x4

    return v0

    .line 388
    :pswitch_58
    return v1

    .line 386
    :pswitch_59
    return v2

    .line 384
    :pswitch_5a
    return v3

    .line 379
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_74
    .sparse-switch
        -0x65a48193 -> :sswitch_2f
        0xb2f770f -> :sswitch_25
        0x3da260f7 -> :sswitch_1b
        0x530e36f4 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_56
    .end packed-switch
.end method

.method public static blacklist providerStatusToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "providerStatus"    # I

    .line 361
    packed-switch p0, :pswitch_data_28

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :pswitch_1c
    const-string v0, "IS_UNCERTAIN"

    return-object v0

    .line 367
    :pswitch_1f
    const-string v0, "IS_CERTAIN"

    return-object v0

    .line 365
    :pswitch_22
    const-string v0, "NOT_READY"

    return-object v0

    .line 363
    :pswitch_25
    const-string v0, "NOT_PRESENT"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist requireValidProviderStatus(I)I
    .registers 4
    .param p0, "providerStatus"    # I

    .line 404
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v0, 0x4

    if-gt p0, v0, :cond_7

    .line 409
    return p0

    .line 406
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid provider status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist couldEnableTelephonyFallback()Z
    .registers 7

    .line 328
    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_41

    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    goto :goto_41

    .line 338
    :cond_10
    const/4 v0, 0x0

    .line 339
    .local v0, "primarySuggestsFallback":Z
    iget v3, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    const/4 v4, 0x4

    if-ne v3, v2, :cond_18

    .line 340
    const/4 v0, 0x1

    goto :goto_26

    .line 341
    :cond_18
    iget v3, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    if-eqz v3, :cond_26

    .line 343
    iget-object v3, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {v3}, Landroid/service/timezone/TimeZoneProviderStatus;->couldEnableTelephonyFallback()Z

    move-result v0

    .line 346
    :cond_26
    :goto_26
    const/4 v3, 0x0

    .line 347
    .local v3, "secondarySuggestsFallback":Z
    iget v5, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    if-ne v5, v2, :cond_2d

    .line 348
    const/4 v3, 0x1

    goto :goto_3b

    .line 349
    :cond_2d
    iget v5, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    if-ne v5, v4, :cond_3b

    iget-object v4, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    if-eqz v4, :cond_3b

    .line 351
    iget-object v4, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    .line 352
    invoke-virtual {v4}, Landroid/service/timezone/TimeZoneProviderStatus;->couldEnableTelephonyFallback()Z

    move-result v3

    .line 354
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_40

    if-eqz v3, :cond_40

    move v1, v2

    :cond_40
    return v1

    .line 333
    .end local v0    # "primarySuggestsFallback":Z
    .end local v3    # "secondarySuggestsFallback":Z
    :cond_41
    :goto_41
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 300
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 301
    return v0

    .line 303
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3e

    .line 306
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 307
    .local v2, "that":Landroid/app/time/LocationTimeZoneAlgorithmStatus;
    iget v3, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    iget v4, v2, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    iget v4, v2, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    iget-object v4, v2, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    .line 309
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget v3, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    iget v4, v2, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    iget-object v4, v2, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    .line 312
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v1

    .line 307
    :goto_3d
    return v0

    .line 304
    .end local v2    # "that":Landroid/app/time/LocationTimeZoneAlgorithmStatus;
    :cond_3e
    :goto_3e
    return v1
.end method

.method public blacklist getPrimaryProviderReportedStatus()Landroid/service/timezone/TimeZoneProviderStatus;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    return-object v0
.end method

.method public blacklist getPrimaryProviderStatus()I
    .registers 2

    .line 176
    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    return v0
.end method

.method public blacklist getSecondaryProviderReportedStatus()Landroid/service/timezone/TimeZoneProviderStatus;
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    return-object v0
.end method

.method public blacklist getSecondaryProviderStatus()I
    .registers 2

    .line 193
    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    return v0
.end method

.method public blacklist getStatus()I
    .registers 2

    .line 168
    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 318
    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    .line 319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    iget v3, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    .line 320
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 318
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationTimeZoneAlgorithmStatus{mAlgorithmStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    .line 208
    invoke-static {v1}, Landroid/app/time/DetectorStatusTypes;->detectionAlgorithmStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrimaryProviderStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    .line 209
    invoke-static {v1}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->providerStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrimaryProviderReportedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSecondaryProviderStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    .line 211
    invoke-static {v1}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->providerStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSecondaryProviderReportedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 291
    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mPrimaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 294
    iget v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->mSecondaryProviderReportedStatus:Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 296
    return-void
.end method
