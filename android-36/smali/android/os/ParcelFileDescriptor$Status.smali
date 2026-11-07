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
.field public static final greylist-max-o DEAD:I = -0x2

.field public static final greylist-max-o DETACHED:I = 0x2

.field public static final greylist-max-o ERROR:I = 0x1

.field public static final greylist-max-o LEAKED:I = 0x3

.field public static final greylist-max-o OK:I = 0x0

.field public static final greylist-max-o SILENCE:I = -0x1


# instance fields
.field public final greylist-max-o msg:Ljava/lang/String;

.field public final greylist-max-o status:I


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "status"    # I

    .line 1223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/ParcelFileDescriptor$Status;-><init>(ILjava/lang/String;)V

    .line 1224
    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1227
    iput p1, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    .line 1228
    iput-object p2, p0, Landroid/os/ParcelFileDescriptor$Status;->msg:Ljava/lang/String;

    .line 1229
    return-void
.end method


# virtual methods
.method public greylist-max-o asIOException()Ljava/io/IOException;
    .registers 4

    .line 1232
    iget v0, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    packed-switch v0, :pswitch_data_54

    .line 1244
    :pswitch_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1242
    :pswitch_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote side was leaked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1240
    :pswitch_28
    new-instance v0, Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;

    invoke-direct {v0}, Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;-><init>()V

    return-object v0

    .line 1238
    :pswitch_2e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$Status;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1236
    :pswitch_49
    const/4 v0, 0x0

    return-object v0

    .line 1234
    :pswitch_4b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote side is dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_54
    .packed-switch -0x2
        :pswitch_4b
        :pswitch_5
        :pswitch_49
        :pswitch_2e
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$Status;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
