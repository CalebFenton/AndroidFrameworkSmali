.class Landroid/security/keymaster/KeymasterLongArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "KeymasterLongArgument.java"


# instance fields
.field public final value:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    #@3
    .line 29
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@6
    move-result v0

    #@7
    sparse-switch v0, :sswitch_data_0

    #@a
    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Bad long tag "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 36
    :sswitch_0
    iput-wide p2, p0, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    #@26
    .line 27
    return-void

    #@27
    .line 29
    nop

    #@28
    :sswitch_data_0
    .sparse-switch
        -0x60000000 -> :sswitch_0
        0x50000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(ILandroid/os/Parcel;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    #@3
    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    #@9
    .line 39
    return-void
.end method


# virtual methods
.method public writeValue(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 46
    iget-wide v0, p0, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 45
    return-void
.end method
