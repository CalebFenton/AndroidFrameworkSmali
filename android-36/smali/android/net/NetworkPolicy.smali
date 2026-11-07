.class public Landroid/net/NetworkPolicy;
.super Ljava/lang/Object;
.source "NetworkPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/net/NetworkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o CYCLE_NONE:I = -0x1

.field private static final greylist-max-o DEFAULT_MTU:J = 0x5dcL

.field public static final greylist-max-o LIMIT_DISABLED:J = -0x1L

.field public static final greylist-max-o SNOOZE_NEVER:J = -0x1L

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist TEMPLATE_BACKUP_VERSION_1_INIT:I = 0x1

.field private static final blacklist TEMPLATE_BACKUP_VERSION_2_UNSUPPORTED:I = 0x2

.field private static final blacklist TEMPLATE_BACKUP_VERSION_3_SUPPORT_CARRIER_TEMPLATE:I = 0x3

.field private static final blacklist TEMPLATE_BACKUP_VERSION_LATEST:I = 0x3

.field private static final greylist-max-o VERSION_INIT:I = 0x1

.field private static final greylist-max-o VERSION_RAPID:I = 0x3

.field private static final greylist-max-o VERSION_RULE:I = 0x2

.field public static final greylist-max-o WARNING_DISABLED:J = -0x1L


# instance fields
.field public greylist-max-o cycleRule:Landroid/util/RecurrenceRule;

.field public greylist inferred:Z

.field public greylist-max-o lastLimitSnooze:J

.field public greylist-max-o lastRapidSnooze:J

.field public greylist-max-o lastWarningSnooze:J

.field public greylist limitBytes:J

.field public greylist metered:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public greylist template:Landroid/net/NetworkTemplate;

.field public greylist warningBytes:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const-class v0, Landroid/net/NetworkPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkPolicy;->TAG:Ljava/lang/String;

    .line 268
    new-instance v0, Landroid/net/NetworkPolicy$1;

    invoke-direct {v0}, Landroid/net/NetworkPolicy$1;-><init>()V

    sput-object v0, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V
    .registers 29
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "cycleDay"    # I
    .param p3, "cycleTimezone"    # Ljava/lang/String;
    .param p4, "warningBytes"    # J
    .param p6, "limitBytes"    # J
    .param p8, "lastWarningSnooze"    # J
    .param p10, "lastLimitSnooze"    # J
    .param p12, "metered"    # Z
    .param p13, "inferred"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    invoke-static/range {p3 .. p3}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    move/from16 v1, p2

    invoke-static {v1, v0}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v4

    move-object v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v2 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 120
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJZ)V
    .registers 23
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "cycleDay"    # I
    .param p3, "cycleTimezone"    # Ljava/lang/String;
    .param p4, "warningBytes"    # J
    .param p6, "limitBytes"    # J
    .param p8, "metered"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    const-wide/16 v10, -0x1

    const/4 v13, 0x0

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v12, p8

    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 111
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJJZZ)V
    .registers 28
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "cycleRule"    # Landroid/util/RecurrenceRule;
    .param p3, "warningBytes"    # J
    .param p5, "limitBytes"    # J
    .param p7, "lastWarningSnooze"    # J
    .param p9, "lastLimitSnooze"    # J
    .param p11, "lastRapidSnooze"    # J
    .param p13, "metered"    # Z
    .param p14, "inferred"    # Z

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 86
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 88
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 89
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 90
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->metered:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 133
    const-string/jumbo v0, "missing NetworkTemplate"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iput-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 134
    const-string/jumbo v0, "missing RecurrenceRule"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/RecurrenceRule;

    iput-object v0, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 135
    move-wide/from16 v2, p3

    iput-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 136
    move-wide/from16 v4, p5

    iput-wide v4, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 137
    move-wide/from16 v6, p7

    iput-wide v6, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 138
    move-wide/from16 v8, p9

    iput-wide v8, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 139
    move-wide/from16 v10, p11

    iput-wide v10, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 140
    move/from16 v0, p13

    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->metered:Z

    .line 141
    move/from16 v12, p14

    iput-boolean v12, p0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 142
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V
    .registers 28
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "cycleRule"    # Landroid/util/RecurrenceRule;
    .param p3, "warningBytes"    # J
    .param p5, "limitBytes"    # J
    .param p7, "lastWarningSnooze"    # J
    .param p9, "lastLimitSnooze"    # J
    .param p11, "metered"    # Z
    .param p12, "inferred"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    const-wide/16 v11, -0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJJZZ)V

    .line 128
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 86
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 88
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 89
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 90
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->metered:Z

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 145
    const-class v2, Landroid/net/NetworkTemplate;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    iput-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 146
    const-class v2, Landroid/util/RecurrenceRule;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/RecurrenceRule;

    iput-object v2, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_50

    move v2, v0

    goto :goto_51

    :cond_50
    move v2, v1

    :goto_51
    iput-boolean v2, p0, Landroid/net/NetworkPolicy;->metered:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5a

    goto :goto_5b

    :cond_5a
    move v0, v1

    :goto_5b
    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 154
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/NetworkPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/NetworkPolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;
    .registers 3
    .param p0, "cycleDay"    # I
    .param p1, "cycleTimezone"    # Ljava/time/ZoneId;

    .line 99
    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    .line 100
    invoke-static {p0, p1}, Landroid/util/RecurrenceRule;->buildRecurringMonthly(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v0

    return-object v0

    .line 102
    :cond_8
    invoke-static {}, Landroid/util/RecurrenceRule;->buildNever()Landroid/util/RecurrenceRule;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getNetworkPolicyFromBackup(Ljava/io/DataInputStream;)Landroid/net/NetworkPolicy;
    .registers 19
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/BackupUtils$BadVersionException;
        }
    .end annotation

    .line 299
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 300
    .local v0, "version":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_67

    const/4 v2, 0x3

    if-gt v0, v2, :cond_67

    .line 304
    invoke-static/range {p0 .. p0}, Landroid/net/NetworkPolicy;->getNetworkTemplateFromBackup(Ljava/io/DataInputStream;)Landroid/net/NetworkTemplate;

    move-result-object v4

    .line 306
    .local v4, "template":Landroid/net/NetworkTemplate;
    const/4 v3, 0x2

    if-lt v0, v3, :cond_19

    .line 307
    new-instance v3, Landroid/util/RecurrenceRule;

    move-object/from16 v5, p0

    invoke-direct {v3, v5}, Landroid/util/RecurrenceRule;-><init>(Ljava/io/DataInputStream;)V

    .local v3, "cycleRule":Landroid/util/RecurrenceRule;
    goto :goto_2c

    .line 309
    .end local v3    # "cycleRule":Landroid/util/RecurrenceRule;
    :cond_19
    move-object/from16 v5, p0

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 310
    .local v3, "cycleDay":I
    invoke-static {v5}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "cycleTimezone":Ljava/lang/String;
    invoke-static {v6}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v7

    move-object v3, v7

    .line 313
    .end local v6    # "cycleTimezone":Ljava/lang/String;
    .local v3, "cycleRule":Landroid/util/RecurrenceRule;
    :goto_2c
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 314
    .local v6, "warningBytes":J
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 315
    .local v8, "limitBytes":J
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    .line 316
    .local v10, "lastWarningSnooze":J
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    .line 318
    .local v12, "lastLimitSnooze":J
    if-lt v0, v2, :cond_43

    .line 319
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    .local v14, "lastRapidSnooze":J
    goto :goto_45

    .line 321
    .end local v14    # "lastRapidSnooze":J
    :cond_43
    const-wide/16 v14, -0x1

    .line 323
    .restart local v14    # "lastRapidSnooze":J
    :goto_45
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/16 v16, 0x0

    if-ne v2, v1, :cond_4f

    move v2, v1

    goto :goto_51

    :cond_4f
    move/from16 v2, v16

    .line 324
    .local v2, "metered":Z
    :goto_51
    move/from16 v17, v2

    .end local v2    # "metered":Z
    .local v17, "metered":Z
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_5a

    goto :goto_5c

    :cond_5a
    move/from16 v1, v16

    .line 325
    .local v1, "inferred":Z
    :goto_5c
    move-object v5, v3

    .end local v3    # "cycleRule":Landroid/util/RecurrenceRule;
    .local v5, "cycleRule":Landroid/util/RecurrenceRule;
    new-instance v3, Landroid/net/NetworkPolicy;

    move/from16 v16, v17

    move/from16 v17, v1

    .end local v1    # "inferred":Z
    .local v16, "metered":Z
    .local v17, "inferred":Z
    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJJZZ)V

    return-object v3

    .line 301
    .end local v4    # "template":Landroid/net/NetworkTemplate;
    .end local v5    # "cycleRule":Landroid/util/RecurrenceRule;
    .end local v6    # "warningBytes":J
    .end local v8    # "limitBytes":J
    .end local v10    # "lastWarningSnooze":J
    .end local v12    # "lastLimitSnooze":J
    .end local v14    # "lastRapidSnooze":J
    .end local v16    # "metered":Z
    .end local v17    # "inferred":Z
    :cond_67
    new-instance v1, Landroid/util/BackupUtils$BadVersionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown backup version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/BackupUtils$BadVersionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getNetworkTemplateBytesForBackup()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v0}, Landroid/net/NetworkPolicy;->isTemplatePersistable(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 332
    sget-object v0, Landroid/net/NetworkPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to backup non-persistable template: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_20
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 336
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 338
    .local v1, "out":Ljava/io/DataOutputStream;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 340
    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 341
    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v2

    .line 342
    .local v2, "subscriberIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_46

    .line 343
    move-object v3, v4

    goto :goto_50

    :cond_46
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 342
    :goto_50
    invoke-static {v1, v3}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 344
    iget-object v3, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 345
    goto :goto_71

    :cond_60
    iget-object v3, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 344
    :goto_71
    invoke-static {v1, v4}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 346
    iget-object v3, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3}, Landroid/net/NetworkTemplate;->getMeteredness()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 348
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private static blacklist getNetworkTemplateFromBackup(Ljava/io/DataInputStream;)Landroid/net/NetworkTemplate;
    .registers 10
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/BackupUtils$BadVersionException;
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 355
    .local v0, "version":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_64

    const/4 v2, 0x3

    if-gt v0, v2, :cond_64

    const/4 v3, 0x2

    if-eq v0, v3, :cond_64

    .line 360
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 361
    .local v3, "matchRule":I
    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "subscriberId":Ljava/lang/String;
    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "wifiNetworkKey":Ljava/lang/String;
    if-lt v0, v2, :cond_20

    .line 366
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "metered":I
    goto :goto_2a

    .line 369
    .end local v1    # "metered":I
    :cond_20
    if-eq v3, v1, :cond_29

    const/16 v2, 0xa

    if-ne v3, v2, :cond_27

    goto :goto_29

    .line 370
    :cond_27
    const/4 v1, -0x1

    goto :goto_2a

    :cond_29
    :goto_29
    nop

    .line 374
    .restart local v1    # "metered":I
    :goto_2a
    :try_start_2a
    new-instance v2, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v2, v3}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 375
    invoke-virtual {v2, v1}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v2

    .line 376
    .local v2, "builder":Landroid/net/NetworkTemplate$Builder;
    if-eqz v4, :cond_3c

    .line 377
    invoke-static {v4}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 379
    :cond_3c
    if-eqz v5, :cond_45

    .line 380
    invoke-static {v5}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/NetworkTemplate$Builder;->setWifiNetworkKeys(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 382
    :cond_45
    invoke-virtual {v2}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v6
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_49} :catch_4a

    return-object v6

    .line 383
    .end local v2    # "builder":Landroid/net/NetworkTemplate$Builder;
    :catch_4a
    move-exception v2

    .line 384
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Landroid/util/BackupUtils$BadVersionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restored network template contains unknown match rule "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/util/BackupUtils$BadVersionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 357
    .end local v1    # "metered":I
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "matchRule":I
    .end local v4    # "subscriberId":Ljava/lang/String;
    .end local v5    # "wifiNetworkKey":Ljava/lang/String;
    :cond_64
    new-instance v1, Landroid/util/BackupUtils$BadVersionException;

    const-string v2, "Unknown Backup Serialization Version"

    invoke-direct {v1, v2}, Landroid/util/BackupUtils$BadVersionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist isTemplatePersistable(Landroid/net/NetworkTemplate;)Z
    .registers 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .line 393
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_36

    .line 410
    return v1

    .line 396
    :sswitch_a
    return v2

    .line 402
    :sswitch_b
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 403
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 404
    return v1

    .line 406
    :cond_20
    return v2

    .line 399
    :sswitch_21
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 400
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMeteredness()I

    move-result v0

    if-ne v0, v2, :cond_33

    move v1, v2

    goto :goto_34

    :cond_33
    nop

    .line 399
    :goto_34
    return v1

    nop

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_21
        0x4 -> :sswitch_b
        0x5 -> :sswitch_a
        0x8 -> :sswitch_a
        0xa -> :sswitch_21
    .end sparse-switch
.end method


# virtual methods
.method public greylist clearSnooze()V
    .registers 3

    .line 203
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 204
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 205
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 206
    return-void
.end method

.method public greylist compareTo(Landroid/net/NetworkPolicy;)I
    .registers 6
    .param p1, "another"    # Landroid/net/NetworkPolicy;

    .line 218
    if-eqz p1, :cond_1e

    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    goto :goto_1e

    .line 222
    :cond_b
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    goto :goto_1c

    .line 226
    :cond_1a
    const/4 v0, 0x0

    return v0

    .line 224
    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_1e
    :goto_1e
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    check-cast p1, Landroid/net/NetworkPolicy;

    invoke-virtual {p0, p1}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o cycleIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/util/Range<",
            "Ljava/time/ZonedDateTime;",
            ">;>;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0}, Landroid/util/RecurrenceRule;->cycleIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 237
    instance-of v0, p1, Landroid/net/NetworkPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    .line 238
    move-object v0, p1

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 239
    .local v0, "other":Landroid/net/NetworkPolicy;
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_52

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_52

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_52

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_52

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_52

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->metered:Z

    iget-boolean v3, v0, Landroid/net/NetworkPolicy;->metered:Z

    if-ne v2, v3, :cond_52

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->inferred:Z

    iget-boolean v3, v0, Landroid/net/NetworkPolicy;->inferred:Z

    if-ne v2, v3, :cond_52

    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 246
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v3, v0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 247
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v1, 0x1

    goto :goto_53

    :cond_52
    nop

    .line 239
    :goto_53
    return v1

    .line 249
    .end local v0    # "other":Landroid/net/NetworkPolicy;
    :cond_54
    return v1
.end method

.method public greylist-max-o getBytesForBackup()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 284
    .local v1, "out":Ljava/io/DataOutputStream;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 285
    invoke-direct {p0}, Landroid/net/NetworkPolicy;->getNetworkTemplateBytesForBackup()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 286
    iget-object v2, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v2, v1}, Landroid/util/RecurrenceRule;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 287
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 288
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 289
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 290
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 291
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 292
    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 293
    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 294
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o hasCycle()Z
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0}, Landroid/util/RecurrenceRule;->cycleIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 231
    iget-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v1, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 232
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v8, p0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 231
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist isOverLimit(J)Z
    .registers 7
    .param p1, "totalBytes"    # J

    .line 194
    const-wide/16 v0, 0xbb8

    add-long/2addr p1, v0

    .line 195
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public greylist isOverWarning(J)Z
    .registers 7
    .param p1, "totalBytes"    # J

    .line 183
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkPolicy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v1, "template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    const-string v1, " cycleRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    const-string v1, " warningBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 258
    const-string v1, " limitBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 259
    const-string v1, " lastWarningSnooze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    const-string v1, " lastLimitSnooze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    const-string v1, " lastRapidSnooze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    const-string v1, " metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    const-string v1, " inferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 158
    iget-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 159
    iget-object v0, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 160
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    iget-boolean v0, p0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-boolean v0, p0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    return-void
.end method
