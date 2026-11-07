.class public Landroid/util/RecurrenceRule;
.super Ljava/lang/Object;
.source "RecurrenceRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/RecurrenceRule$RecurringIterator;,
        Landroid/util/RecurrenceRule$NonrecurringIterator;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/util/RecurrenceRule;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o LOGD:Z

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecurrenceRule"

.field private static final greylist-max-o VERSION_INIT:I

.field public static greylist-max-o sClock:Ljava/time/Clock;


# instance fields
.field public final greylist-max-o end:Ljava/time/ZonedDateTime;

.field public final greylist-max-o period:Ljava/time/Period;

.field public final greylist-max-r start:Ljava/time/ZonedDateTime;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOGD()Z
    .registers 1

    sget-boolean v0, Landroid/util/RecurrenceRule;->LOGD:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 48
    const-string v0, "RecurrenceRule"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/util/RecurrenceRule;->LOGD:Z

    .line 54
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Landroid/util/RecurrenceRule;->sClock:Ljava/time/Clock;

    .line 146
    new-instance v0, Landroid/util/RecurrenceRule$1;

    invoke-direct {v0}, Landroid/util/RecurrenceRule$1;-><init>()V

    sput-object v0, Landroid/util/RecurrenceRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v0

    iput-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/util/RecurrenceRule-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/util/RecurrenceRule;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/DataInputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 103
    .local v0, "version":I
    packed-switch v0, :pswitch_data_44

    .line 110
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :pswitch_23
    invoke-static {p1}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v1

    iput-object v1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 106
    invoke-static {p1}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v1

    iput-object v1, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 107
    invoke-static {p1}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v1

    iput-object v1, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 108
    nop

    .line 112
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_23
    .end packed-switch
.end method

.method public constructor greylist-max-o <init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V
    .registers 4
    .param p1, "start"    # Ljava/time/ZonedDateTime;
    .param p2, "end"    # Ljava/time/ZonedDateTime;
    .param p3, "period"    # Ljava/time/Period;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 63
    iput-object p2, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 64
    iput-object p3, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 65
    return-void
.end method

.method public static greylist-max-o buildNever()Landroid/util/RecurrenceRule;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    new-instance v0, Landroid/util/RecurrenceRule;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static greylist-max-r buildRecurringMonthly(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;
    .registers 7
    .param p0, "dayOfMonth"    # I
    .param p1, "zone"    # Ljava/time/ZoneId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    sget-object v0, Landroid/util/RecurrenceRule;->sClock:Ljava/time/Clock;

    invoke-static {v0}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 77
    .local v0, "now":Ljava/time/ZonedDateTime;
    nop

    .line 78
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDate;->minusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/time/LocalDate;->withMonth(I)Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/time/LocalDate;->withDayOfMonth(I)Ljava/time/LocalDate;

    move-result-object v1

    sget-object v3, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    .line 77
    invoke-static {v1, v3, p1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 80
    .local v1, "start":Ljava/time/ZonedDateTime;
    new-instance v3, Landroid/util/RecurrenceRule;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/time/Period;->ofMonths(I)Ljava/time/Period;

    move-result-object v2

    invoke-direct {v3, v1, v4, v2}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v3
.end method

.method public static greylist-max-o convertPeriod(Ljava/time/Period;)Ljava/lang/String;
    .registers 2
    .param p0, "period"    # Ljava/time/Period;

    .line 262
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/time/Period;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public static greylist-max-o convertPeriod(Ljava/lang/String;)Ljava/time/Period;
    .registers 2
    .param p0, "period"    # Ljava/lang/String;

    .line 266
    if-eqz p0, :cond_7

    invoke-static {p0}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public static greylist-max-o convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;
    .registers 2
    .param p0, "time"    # Ljava/time/ZonedDateTime;

    .line 254
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public static greylist-max-o convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;
    .registers 2
    .param p0, "time"    # Ljava/lang/String;

    .line 258
    if-eqz p0, :cond_7

    invoke-static {p0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method


# virtual methods
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

    .line 172
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    if-eqz v0, :cond_a

    .line 173
    new-instance v0, Landroid/util/RecurrenceRule$RecurringIterator;

    invoke-direct {v0, p0}, Landroid/util/RecurrenceRule$RecurringIterator;-><init>(Landroid/util/RecurrenceRule;)V

    return-object v0

    .line 175
    :cond_a
    new-instance v0, Landroid/util/RecurrenceRule$NonrecurringIterator;

    invoke-direct {v0, p0}, Landroid/util/RecurrenceRule$NonrecurringIterator;-><init>(Landroid/util/RecurrenceRule;)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 137
    instance-of v0, p1, Landroid/util/RecurrenceRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 138
    move-object v0, p1

    check-cast v0, Landroid/util/RecurrenceRule;

    .line 139
    .local v0, "other":Landroid/util/RecurrenceRule;
    iget-object v2, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    iget-object v3, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    iget-object v3, v0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 140
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    iget-object v3, v0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 141
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 139
    :goto_29
    return v1

    .line 143
    .end local v0    # "other":Landroid/util/RecurrenceRule;
    :cond_2a
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 132
    iget-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    iget-object v1, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    iget-object v2, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isMonthly()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 166
    invoke-virtual {v0}, Ljava/time/Period;->getYears()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 167
    invoke-virtual {v0}, Ljava/time/Period;->getMonths()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 168
    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v0

    if-nez v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 164
    :goto_23
    return v1
.end method

.method public greylist-max-o isRecurring()Z
    .registers 2

    .line 159
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecurrenceRule{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const-string v1, " period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public greylist-max-o writeToStream(Ljava/io/DataOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 116
    iget-object v0, p0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 119
    return-void
.end method
