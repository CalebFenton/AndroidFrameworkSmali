.class public final Landroid/app/AutomaticZenRule;
.super Ljava/lang/Object;
.source "AutomaticZenRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AutomaticZenRule$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private conditionId:Landroid/net/Uri;

.field private creationTime:J

.field private enabled:Z

.field private interruptionFilter:I

.field private name:Ljava/lang/String;

.field private owner:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 203
    new-instance v0, Landroid/app/AutomaticZenRule$1;

    #@2
    invoke-direct {v0}, Landroid/app/AutomaticZenRule$1;-><init>()V

    #@5
    .line 202
    sput-object v0, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 32
    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    #@8
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v2

    #@c
    if-ne v2, v1, :cond_0

    #@e
    move v0, v1

    #@f
    :cond_0
    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    #@11
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    #@1d
    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    iput v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    #@23
    .line 76
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/net/Uri;

    #@29
    iput-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    #@2b
    .line 77
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/content/ComponentName;

    #@31
    iput-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    #@33
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@36
    move-result-wide v0

    #@37
    iput-wide v0, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    #@39
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/content/ComponentName;
    .param p3, "conditionId"    # Landroid/net/Uri;
    .param p4, "interruptionFilter"    # I
    .param p5, "enabled"    # Z

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    #@6
    .line 53
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    #@8
    .line 54
    iput-object p2, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    #@a
    .line 55
    iput-object p3, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    #@c
    .line 56
    iput p4, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    #@e
    .line 57
    iput-boolean p5, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    #@10
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/content/ComponentName;
    .param p3, "conditionId"    # Landroid/net/Uri;
    .param p4, "interruptionFilter"    # I
    .param p5, "enabled"    # Z
    .param p6, "creationTime"    # J

    #@0
    .prologue
    .line 66
    invoke-direct/range {p0 .. p5}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V

    #@3
    .line 67
    iput-wide p6, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    #@5
    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 154
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 186
    instance-of v3, p1, Landroid/app/AutomaticZenRule;

    #@4
    if-nez v3, :cond_0

    #@6
    return v2

    #@7
    .line 187
    :cond_0
    if-ne p1, p0, :cond_1

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 188
    check-cast v0, Landroid/app/AutomaticZenRule;

    #@d
    .line 189
    .local v0, "other":Landroid/app/AutomaticZenRule;
    iget-boolean v3, v0, Landroid/app/AutomaticZenRule;->enabled:Z

    #@f
    iget-boolean v4, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    #@11
    if-ne v3, v4, :cond_3

    #@13
    .line 190
    iget-object v3, v0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    #@15
    iget-object v4, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    #@17
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    .line 189
    if-eqz v3, :cond_3

    #@1d
    .line 191
    iget v3, v0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    #@1f
    iget v4, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    #@21
    if-ne v3, v4, :cond_3

    #@23
    .line 192
    iget-object v3, v0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    #@25
    iget-object v4, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    #@27
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    .line 189
    if-eqz v3, :cond_3

    #@2d
    .line 193
    iget-object v3, v0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    #@2f
    iget-object v4, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    #@31
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@34
    move-result v3

    #@35
    .line 189
    if-eqz v3, :cond_3

    #@37
    .line 194
    iget-wide v4, v0, Landroid/app/AutomaticZenRule;->creationTime:J

    #@39
    iget-wide v6, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    #@3b
    cmp-long v3, v4, v6

    #@3d
    if-nez v3, :cond_2

    #@3f
    .line 189
    :goto_0
    return v1

    #@40
    :cond_2
    move v1, v2

    #@41
    .line 194
    goto :goto_0

    #@42
    :cond_3
    move v1, v2

    #@43
    .line 189
    goto :goto_0
.end method

.method public getConditionId()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    #@0
    .prologue
    .line 120
    iget-wide v0, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    #@2
    return-wide v0
.end method

.method public getInterruptionFilter()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOwner()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 199
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-boolean v1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    #@5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget-object v1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    iget v1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    iget-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-object v1, v0, v2

    #@1f
    iget-object v1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    #@21
    const/4 v2, 0x4

    #@22
    aput-object v1, v0, v2

    #@24
    iget-wide v2, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    #@26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29
    move-result-object v1

    #@2a
    const/4 v2, 0x5

    #@2b
    aput-object v1, v0, v2

    #@2d
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    #@2
    return v0
.end method

.method public setConditionId(Landroid/net/Uri;)V
    .locals 0
    .param p1, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 127
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    #@2
    .line 126
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 149
    iput-boolean p1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    #@2
    .line 148
    return-void
.end method

.method public setInterruptionFilter(I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    #@0
    .prologue
    .line 135
    iput p1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    #@2
    .line 134
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 142
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    #@2
    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-class v1, Landroid/app/AutomaticZenRule;

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b
    const/16 v1, 0x5b

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    .line 175
    const-string/jumbo v1, "enabled="

    #@14
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 175
    iget-boolean v1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    #@1a
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 176
    const-string/jumbo v1, ",name="

    #@21
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 176
    iget-object v1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    #@27
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 177
    const-string/jumbo v1, ",interruptionFilter="

    #@2e
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 177
    iget v1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    #@34
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 178
    const-string/jumbo v1, ",conditionId="

    #@3b
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 178
    iget-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    #@41
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 179
    const-string/jumbo v1, ",owner="

    #@48
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 179
    iget-object v1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    #@4e
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 180
    const-string/jumbo v1, ",creationTime="

    #@55
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 180
    iget-wide v2, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    #@5b
    .line 174
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 181
    const/16 v1, 0x5d

    #@61
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 159
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 160
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 161
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 162
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 166
    :goto_1
    iget v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 167
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    #@1d
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@20
    .line 168
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    #@22
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@25
    .line 169
    iget-wide v0, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    #@27
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@2a
    .line 158
    return-void

    #@2b
    :cond_0
    move v0, v2

    #@2c
    .line 159
    goto :goto_0

    #@2d
    .line 164
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    goto :goto_1
.end method
