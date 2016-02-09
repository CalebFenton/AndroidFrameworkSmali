.class Landroid/os/ParcelFileDescriptor$Status;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Status"
.end annotation


# static fields
.field public static final DEAD:I = -0x2

.field public static final DETACHED:I = 0x2

.field public static final ERROR:I = 0x1

.field public static final LEAKED:I = 0x3

.field public static final OK:I = 0x0

.field public static final SILENCE:I = -0x1


# instance fields
.field public final msg:Ljava/lang/String;

.field public final status:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 1016
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/os/ParcelFileDescriptor$Status;-><init>(ILjava/lang/String;)V

    #@4
    .line 1015
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1020
    iput p1, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    #@5
    .line 1021
    iput-object p2, p0, Landroid/os/ParcelFileDescriptor$Status;->msg:Ljava/lang/String;

    #@7
    .line 1019
    return-void
.end method


# virtual methods
.method public asIOException()Ljava/io/IOException;
    .locals 3

    #@0
    .prologue
    .line 1025
    iget v0, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1037
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Unknown status: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@20
    return-object v0

    #@21
    .line 1027
    :pswitch_1
    new-instance v0, Ljava/io/IOException;

    #@23
    const-string/jumbo v1, "Remote side is dead"

    #@26
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@29
    return-object v0

    #@2a
    .line 1029
    :pswitch_2
    const/4 v0, 0x0

    #@2b
    return-object v0

    #@2c
    .line 1031
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "Remote error: "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$Status;->msg:Ljava/lang/String;

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@47
    return-object v0

    #@48
    .line 1033
    :pswitch_4
    new-instance v0, Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;

    #@4a
    invoke-direct {v0}, Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;-><init>()V

    #@4d
    return-object v0

    #@4e
    .line 1035
    :pswitch_5
    new-instance v0, Ljava/io/IOException;

    #@50
    const-string/jumbo v1, "Remote side was leaked"

    #@53
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@56
    return-object v0

    #@57
    .line 1025
    nop

    #@58
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ": "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$Status;->msg:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "}"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method
