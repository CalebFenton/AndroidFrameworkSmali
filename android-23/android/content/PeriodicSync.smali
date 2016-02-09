.class public Landroid/content/PeriodicSync;
.super Ljava/lang/Object;
.source "PeriodicSync.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/PeriodicSync$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final authority:Ljava/lang/String;

.field public final extras:Landroid/os/Bundle;

.field public final flexTime:J

.field public final period:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 105
    new-instance v0, Landroid/content/PeriodicSync$1;

    #@2
    invoke-direct {v0}, Landroid/content/PeriodicSync$1;-><init>()V

    #@5
    sput-object v0, Landroid/content/PeriodicSync;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "periodInSeconds"    # J

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    #@5
    .line 47
    iput-object p2, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    #@7
    .line 48
    if-nez p3, :cond_0

    #@9
    .line 49
    new-instance v0, Landroid/os/Bundle;

    #@b
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@e
    iput-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@10
    .line 53
    :goto_0
    iput-wide p4, p0, Landroid/content/PeriodicSync;->period:J

    #@12
    .line 55
    const-wide/16 v0, 0x0

    #@14
    iput-wide v0, p0, Landroid/content/PeriodicSync;->flexTime:J

    #@16
    .line 45
    return-void

    #@17
    .line 51
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@19
    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@1c
    iput-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@1e
    goto :goto_0
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "period"    # J
    .param p6, "flexTime"    # J

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    iput-object p1, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    #@5
    .line 77
    iput-object p2, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    #@7
    .line 78
    new-instance v0, Landroid/os/Bundle;

    #@9
    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@c
    iput-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@e
    .line 79
    iput-wide p4, p0, Landroid/content/PeriodicSync;->period:J

    #@10
    .line 80
    iput-wide p6, p0, Landroid/content/PeriodicSync;->flexTime:J

    #@12
    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/PeriodicSync;)V
    .locals 2
    .param p1, "other"    # Landroid/content/PeriodicSync;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iget-object v0, p1, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    #@5
    iput-object v0, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    #@7
    .line 64
    iget-object v0, p1, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    #@b
    .line 65
    new-instance v0, Landroid/os/Bundle;

    #@d
    iget-object v1, p1, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@f
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@12
    iput-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@14
    .line 66
    iget-wide v0, p1, Landroid/content/PeriodicSync;->period:J

    #@16
    iput-wide v0, p0, Landroid/content/PeriodicSync;->period:J

    #@18
    .line 67
    iget-wide v0, p1, Landroid/content/PeriodicSync;->flexTime:J

    #@1a
    iput-wide v0, p0, Landroid/content/PeriodicSync;->flexTime:J

    #@1c
    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/accounts/Account;

    #@a
    iput-object v0, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    #@c
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    #@12
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@18
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1b
    move-result-wide v0

    #@1c
    iput-wide v0, p0, Landroid/content/PeriodicSync;->period:J

    #@1e
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@21
    move-result-wide v0

    #@22
    iput-wide v0, p0, Landroid/content/PeriodicSync;->flexTime:J

    #@24
    .line 83
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/PeriodicSync;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/PeriodicSync;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "b1"    # Landroid/os/Bundle;
    .param p1, "b2"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 137
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    #@5
    move-result v2

    #@6
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    #@9
    move-result v3

    #@a
    if-eq v2, v3, :cond_0

    #@c
    .line 138
    return v4

    #@d
    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 141
    return v5

    #@14
    .line 143
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@17
    move-result-object v2

    #@18
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v1

    #@1c
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_4

    #@22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Ljava/lang/String;

    #@28
    .line 144
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@2b
    move-result v2

    #@2c
    if-nez v2, :cond_3

    #@2e
    .line 145
    return v4

    #@2f
    .line 147
    :cond_3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-nez v2, :cond_2

    #@3d
    .line 148
    return v4

    #@3e
    .line 151
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    return v5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 93
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 119
    if-ne p1, p0, :cond_0

    #@3
    .line 120
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 122
    :cond_0
    instance-of v2, p1, Landroid/content/PeriodicSync;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 123
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 125
    check-cast v0, Landroid/content/PeriodicSync;

    #@d
    .line 126
    .local v0, "other":Landroid/content/PeriodicSync;
    iget-object v2, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    #@f
    iget-object v3, v0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    #@11
    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 127
    iget-object v2, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    #@19
    iget-object v3, v0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    .line 126
    if-eqz v2, :cond_2

    #@21
    .line 128
    iget-wide v2, p0, Landroid/content/PeriodicSync;->period:J

    #@23
    iget-wide v4, v0, Landroid/content/PeriodicSync;->period:J

    #@25
    cmp-long v2, v2, v4

    #@27
    if-nez v2, :cond_2

    #@29
    .line 129
    iget-object v1, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@2b
    iget-object v2, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@2d
    invoke-static {v1, v2}, Landroid/content/PeriodicSync;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@30
    move-result v1

    #@31
    .line 126
    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "account: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 157
    const-string/jumbo v1, ", authority: "

    #@15
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 157
    iget-object v1, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    #@1b
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 158
    const-string/jumbo v1, ". period: "

    #@22
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 158
    iget-wide v2, p0, Landroid/content/PeriodicSync;->period:J

    #@28
    .line 156
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 158
    const-string/jumbo v1, "s "

    #@2f
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 159
    const-string/jumbo v1, ", flex: "

    #@36
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 159
    iget-wide v2, p0, Landroid/content/PeriodicSync;->flexTime:J

    #@3c
    .line 156
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 99
    iget-object v0, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 100
    iget-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@f
    .line 101
    iget-wide v0, p0, Landroid/content/PeriodicSync;->period:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 102
    iget-wide v0, p0, Landroid/content/PeriodicSync;->flexTime:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    .line 97
    return-void
.end method
