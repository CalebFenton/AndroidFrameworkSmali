.class public Lsun/nio/fs/UnixChannelFactory$Flags;
.super Ljava/lang/Object;
.source "UnixChannelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixChannelFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Flags"
.end annotation


# instance fields
.field blacklist append:Z

.field blacklist create:Z

.field blacklist createNew:Z

.field blacklist deleteOnClose:Z

.field blacklist dsync:Z

.field blacklist noFollowLinks:Z

.field blacklist read:Z

.field blacklist sync:Z

.field blacklist truncateExisting:Z

.field blacklist write:Z


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist toFlags(Ljava/util/Set;)Lsun/nio/fs/UnixChannelFactory$Flags;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;)",
            "Lsun/nio/fs/UnixChannelFactory$Flags;"
        }
    .end annotation

    .line 69
    .local p0, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    new-instance v0, Lsun/nio/fs/UnixChannelFactory$Flags;

    invoke-direct {v0}, Lsun/nio/fs/UnixChannelFactory$Flags;-><init>()V

    .line 70
    .local v0, "flags":Lsun/nio/fs/UnixChannelFactory$Flags;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/OpenOption;

    .line 71
    .local v2, "option":Ljava/nio/file/OpenOption;
    instance-of v3, v2, Ljava/nio/file/StandardOpenOption;

    const/4 v4, 0x1

    if-eqz v3, :cond_4a

    .line 72
    sget-object v3, Lsun/nio/fs/UnixChannelFactory$1;->$SwitchMap$java$nio$file$StandardOpenOption:[I

    move-object v5, v2

    check-cast v5, Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v5}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_78

    .line 83
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 82
    :pswitch_2e
    iput-boolean v4, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->dsync:Z

    goto :goto_9

    .line 81
    :pswitch_31
    iput-boolean v4, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->sync:Z

    goto :goto_9

    .line 80
    :pswitch_34
    goto :goto_9

    .line 79
    :pswitch_35
    iput-boolean v4, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    goto :goto_9

    .line 78
    :pswitch_38
    iput-boolean v4, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->createNew:Z

    goto :goto_9

    .line 77
    :pswitch_3b
    iput-boolean v4, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->create:Z

    goto :goto_9

    .line 76
    :pswitch_3e
    iput-boolean v4, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->truncateExisting:Z

    goto :goto_9

    .line 75
    :pswitch_41
    iput-boolean v4, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    goto :goto_9

    .line 74
    :pswitch_44
    iput-boolean v4, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    goto :goto_9

    .line 73
    :pswitch_47
    iput-boolean v4, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    goto :goto_9

    .line 87
    :cond_4a
    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v2, v3, :cond_55

    sget v3, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    if-eqz v3, :cond_55

    .line 88
    iput-boolean v4, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->noFollowLinks:Z

    .line 89
    goto :goto_9

    .line 91
    :cond_55
    if-nez v2, :cond_5d

    .line 92
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 93
    :cond_5d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v2    # "option":Ljava/nio/file/OpenOption;
    :cond_76
    return-object v0

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_34
        :pswitch_31
        :pswitch_2e
    .end packed-switch
.end method
