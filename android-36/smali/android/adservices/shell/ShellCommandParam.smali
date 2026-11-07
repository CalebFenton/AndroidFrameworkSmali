.class public Landroid/adservices/shell/ShellCommandParam;
.super Ljava/lang/Object;
.source "ShellCommandParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/shell/ShellCommandParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCommandArgs:[Ljava/lang/String;

.field private final blacklist mMaxCommandDurationMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/adservices/shell/ShellCommandParam$1;

    invoke-direct {v0}, Landroid/adservices/shell/ShellCommandParam$1;-><init>()V

    sput-object v0, Landroid/adservices/shell/ShellCommandParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor blacklist <init>(J[Ljava/lang/String;)V
    .registers 5
    .param p1, "maxCommandDurationMillis"    # J
    .param p3, "commandArgs"    # [Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Landroid/adservices/shell/ShellCommandParam;->mMaxCommandDurationMillis:J

    .line 39
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/shell/ShellCommandParam;->mCommandArgs:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/adservices/shell/ShellCommandParam;-><init>(J[Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/shell/ShellCommandParam-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/shell/ShellCommandParam;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 72
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 73
    return v0

    .line 75
    :cond_4
    instance-of v1, p1, Landroid/adservices/shell/ShellCommandParam;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 76
    return v2

    .line 79
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/shell/ShellCommandParam;

    .line 80
    .local v1, "that":Landroid/adservices/shell/ShellCommandParam;
    iget-wide v3, p0, Landroid/adservices/shell/ShellCommandParam;->mMaxCommandDurationMillis:J

    iget-wide v5, v1, Landroid/adservices/shell/ShellCommandParam;->mMaxCommandDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    iget-object v3, p0, Landroid/adservices/shell/ShellCommandParam;->mCommandArgs:[Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/shell/ShellCommandParam;->mCommandArgs:[Ljava/lang/String;

    .line 81
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    .line 80
    :goto_21
    return v0
.end method

.method public blacklist getCommandArgs()[Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/adservices/shell/ShellCommandParam;->mCommandArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMaxCommandDurationMillis()J
    .registers 3

    .line 99
    iget-wide v0, p0, Landroid/adservices/shell/ShellCommandParam;->mMaxCommandDurationMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 86
    iget-wide v0, p0, Landroid/adservices/shell/ShellCommandParam;->mMaxCommandDurationMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/shell/ShellCommandParam;->mCommandArgs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 66
    iget-wide v0, p0, Landroid/adservices/shell/ShellCommandParam;->mMaxCommandDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-object v0, p0, Landroid/adservices/shell/ShellCommandParam;->mCommandArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 68
    return-void
.end method
