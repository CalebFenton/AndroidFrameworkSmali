.class Landroid/security/keymaster/KeymasterDateArgument;
.super Landroid/security/keymaster/KeymasterArgument;
.source "KeymasterDateArgument.java"


# instance fields
.field public final date:Ljava/util/Date;


# direct methods
.method public constructor <init>(ILandroid/os/Parcel;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    #@3
    .line 41
    new-instance v0, Ljava/util/Date;

    #@5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@8
    move-result-wide v2

    #@9
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@c
    iput-object v0, p0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    #@e
    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/util/Date;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArgument;-><init>(I)V

    #@3
    .line 30
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@6
    move-result v0

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Bad date tag "

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
    :pswitch_0
    iput-object p2, p0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    #@26
    .line 28
    return-void

    #@27
    .line 30
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x60000000
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public writeValue(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    #@2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    #@5
    move-result-wide v0

    #@6
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@9
    .line 45
    return-void
.end method
