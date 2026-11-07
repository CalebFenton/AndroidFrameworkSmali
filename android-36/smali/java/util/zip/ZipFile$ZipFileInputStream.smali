.class Ljava/util/zip/ZipFile$ZipFileInputStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZipFileInputStream"
.end annotation


# instance fields
.field private volatile blacklist closeRequested:Z

.field private greylist-max-o pos:J

.field protected greylist-max-o rem:J

.field protected greylist-max-o size:J

.field private blacklist startingPos:J

.field final synthetic blacklist this$0:Ljava/util/zip/ZipFile;


# direct methods
.method constructor blacklist <init>(Ljava/util/zip/ZipFile;Ljava/nio/DirectByteBuffer;I)V
    .registers 8
    .param p2, "cen"    # Ljava/nio/DirectByteBuffer;
    .param p3, "cenpos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 937
    iput-object p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 938
    invoke-static {p2, p3}, Ljava/util/zip/ZipUtils;->CENSIZ(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 939
    invoke-static {p2, p3}, Ljava/util/zip/ZipUtils;->CENLEN(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->size:J

    .line 940
    invoke-static {p2, p3}, Ljava/util/zip/ZipUtils;->CENOFF(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 942
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_31

    .line 944
    :cond_2e
    invoke-direct {p0, p2, p3}, Ljava/util/zip/ZipFile$ZipFileInputStream;->checkZIP64(Ljava/nio/DirectByteBuffer;I)V

    .line 947
    :cond_31
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    invoke-static {p1}, Ljava/util/zip/ZipFile;->-$$Nest$fgetres(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipFile$CleanableResource;

    move-result-object p1

    iget-object p1, p1, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    invoke-static {p1}, Ljava/util/zip/ZipFile$Source;->-$$Nest$fgetlocpos(Ljava/util/zip/ZipFile$Source;)J

    move-result-wide v2

    add-long/2addr v0, v2

    neg-long v0, v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 948
    return-void
.end method

.method private blacklist checkZIP64(Ljava/nio/DirectByteBuffer;I)V
    .registers 13
    .param p1, "cen"    # Ljava/nio/DirectByteBuffer;
    .param p2, "cenpos"    # I

    .line 953
    add-int/lit8 v0, p2, 0x2e

    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->CENNAM(Ljava/nio/DirectByteBuffer;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 954
    .local v0, "off":I
    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->CENEXT(Ljava/nio/DirectByteBuffer;I)I

    move-result v1

    add-int/2addr v1, v0

    .line 955
    .local v1, "end":I
    :goto_c
    add-int/lit8 v2, v0, 0x4

    if-ge v2, v1, :cond_73

    .line 956
    invoke-static {p1, v0}, Ljava/util/zip/ZipUtils;->get16(Ljava/nio/DirectByteBuffer;I)I

    move-result v2

    .line 957
    .local v2, "tag":I
    add-int/lit8 v3, v0, 0x2

    invoke-static {p1, v3}, Ljava/util/zip/ZipUtils;->get16(Ljava/nio/DirectByteBuffer;I)I

    move-result v3

    .line 958
    .local v3, "sz":I
    add-int/lit8 v0, v0, 0x4

    .line 959
    add-int v4, v0, v3

    if-le v4, v1, :cond_21

    .line 960
    goto :goto_73

    .line 961
    :cond_21
    const/4 v4, 0x1

    if-ne v2, v4, :cond_71

    .line 962
    iget-wide v4, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->size:J

    const-wide v6, 0xffffffffL

    cmp-long v4, v4, v6

    const/16 v5, 0x8

    if-nez v4, :cond_42

    .line 963
    if-lt v3, v5, :cond_73

    add-int/lit8 v4, v0, 0x8

    if-le v4, v1, :cond_38

    .line 964
    goto :goto_73

    .line 965
    :cond_38
    invoke-static {p1, v0}, Ljava/util/zip/ZipUtils;->get64(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v8

    iput-wide v8, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->size:J

    .line 966
    add-int/lit8 v3, v3, -0x8

    .line 967
    add-int/lit8 v0, v0, 0x8

    .line 969
    :cond_42
    iget-wide v8, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    cmp-long v4, v8, v6

    if-nez v4, :cond_59

    .line 970
    if-lt v3, v5, :cond_73

    add-int/lit8 v4, v0, 0x8

    if-le v4, v1, :cond_4f

    .line 971
    goto :goto_73

    .line 972
    :cond_4f
    invoke-static {p1, v0}, Ljava/util/zip/ZipUtils;->get64(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v8

    iput-wide v8, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 973
    add-int/lit8 v3, v3, -0x8

    .line 974
    add-int/lit8 v0, v0, 0x8

    .line 976
    :cond_59
    iget-wide v8, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    cmp-long v4, v8, v6

    if-nez v4, :cond_73

    .line 977
    if-lt v3, v5, :cond_73

    add-int/lit8 v4, v0, 0x8

    if-le v4, v1, :cond_66

    .line 978
    goto :goto_73

    .line 979
    :cond_66
    invoke-static {p1, v0}, Ljava/util/zip/ZipUtils;->get64(Ljava/nio/DirectByteBuffer;I)J

    move-result-wide v4

    iput-wide v4, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 980
    add-int/lit8 v3, v3, -0x8

    .line 981
    add-int/lit8 v0, v0, 0x8

    goto :goto_73

    .line 985
    :cond_71
    add-int/2addr v0, v3

    .line 986
    .end local v2    # "tag":I
    .end local v3    # "sz":I
    goto :goto_c

    .line 987
    :cond_73
    :goto_73
    return-void
.end method

.method private blacklist initDataOffset()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 996
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_53

    .line 997
    const/16 v0, 0x1e

    new-array v2, v0, [B

    .line 998
    .local v2, "loc":[B
    iget-wide v3, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    neg-long v3, v3

    iput-wide v3, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 999
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v1}, Ljava/util/zip/ZipFile;->-$$Nest$fgetres(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipFile$CleanableResource;

    move-result-object v1

    iget-object v1, v1, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    array-length v4, v2

    iget-wide v5, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Ljava/util/zip/ZipFile$Source;->-$$Nest$mreadFullyAt(Ljava/util/zip/ZipFile$Source;[BIIJ)I

    move-result v1

    .line 1000
    .local v1, "len":I
    if-ne v1, v0, :cond_4b

    .line 1003
    invoke-static {v2}, Ljava/util/zip/ZipUtils;->LOCSIG([B)J

    move-result-wide v3

    const-wide/32 v5, 0x4034b50

    cmp-long v3, v3, v5

    if-nez v3, :cond_43

    .line 1006
    iget-wide v3, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    invoke-static {v2}, Ljava/util/zip/ZipUtils;->LOCNAM([B)I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v2}, Ljava/util/zip/ZipUtils;->LOCEXT([B)I

    move-result v0

    add-int/2addr v5, v0

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 1007
    iget-wide v3, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    iput-wide v3, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->startingPos:J

    goto :goto_53

    .line 1004
    :cond_43
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v3, "ZipFile invalid LOC header (bad signature)"

    invoke-direct {v0, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_4b
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v3, "ZipFile error reading zip file"

    invoke-direct {v0, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    .end local v1    # "len":I
    .end local v2    # "loc":[B
    :cond_53
    :goto_53
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    return-wide v0
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 5

    .line 1073
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const v0, 0x7fffffff

    goto :goto_10

    :cond_d
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    long-to-int v0, v0

    :goto_10
    return v0
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 1081
    iget-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->closeRequested:Z

    if-eqz v0, :cond_5

    .line 1082
    return-void

    .line 1084
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->closeRequested:Z

    .line 1085
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 1086
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-$$Nest$fgetres(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipFile$CleanableResource;

    move-result-object v0

    iget-object v0, v0, Ljava/util/zip/ZipFile$CleanableResource;->istreams:Ljava/util/Set;

    monitor-enter v0

    .line 1087
    :try_start_15
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v1}, Ljava/util/zip/ZipFile;->-$$Nest$fgetres(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipFile$CleanableResource;

    move-result-object v1

    iget-object v1, v1, Ljava/util/zip/ZipFile$CleanableResource;->istreams:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1088
    monitor-exit v0

    .line 1089
    return-void

    .line 1088
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1038
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 1039
    .local v1, "b":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->read([BII)I

    move-result v3

    if-ne v3, v0, :cond_f

    .line 1040
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 1042
    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 16
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1013
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v1

    .line 1014
    :try_start_3
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-$$Nest$mensureOpenOrZipException(Ljava/util/zip/ZipFile;)V

    .line 1015
    invoke-direct {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->initDataOffset()J

    .line 1016
    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_63

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1a

    .line 1017
    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_16

    const/4 v0, -0x1

    return v0

    .line 1030
    :catchall_16
    move-exception v0

    move-object v7, p1

    move v8, p2

    goto :goto_66

    .line 1019
    :cond_1a
    int-to-long v2, p3

    :try_start_1b
    iget-wide v6, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_63

    cmp-long v0, v2, v6

    if-lez v0, :cond_26

    .line 1020
    :try_start_21
    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_16

    long-to-int p3, v2

    move v9, p3

    goto :goto_27

    .line 1019
    :cond_26
    move v9, p3

    .line 1022
    .end local p3    # "len":I
    .local v9, "len":I
    :goto_27
    if-gtz v9, :cond_31

    .line 1023
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2c

    const/4 p3, 0x0

    return p3

    .line 1030
    :catchall_2c
    move-exception v0

    move-object v7, p1

    move v8, p2

    move p3, v9

    goto :goto_66

    .line 1025
    :cond_31
    :try_start_31
    iget-object p3, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {p3}, Ljava/util/zip/ZipFile;->-$$Nest$fgetres(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipFile$CleanableResource;

    move-result-object p3

    iget-object v6, p3, Ljava/util/zip/ZipFile$CleanableResource;->zsrc:Ljava/util/zip/ZipFile$Source;

    iget-wide v10, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_5e

    move-object v7, p1

    move v8, p2

    .end local p1    # "b":[B
    .end local p2    # "off":I
    .local v7, "b":[B
    .local v8, "off":I
    :try_start_3d
    invoke-static/range {v6 .. v11}, Ljava/util/zip/ZipFile$Source;->-$$Nest$mreadAt(Ljava/util/zip/ZipFile$Source;[BIIJ)I

    move-result p1
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_5b

    move p3, p1

    .line 1026
    .end local v9    # "len":I
    .restart local p3    # "len":I
    if-lez p3, :cond_50

    .line 1027
    :try_start_44
    iget-wide p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 1028
    iget-wide p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    int-to-long v2, p3

    sub-long/2addr p1, v2

    iput-wide p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 1030
    :cond_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_68

    .line 1031
    iget-wide p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_5a

    .line 1032
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    .line 1034
    :cond_5a
    return p3

    .line 1030
    .end local p3    # "len":I
    .restart local v9    # "len":I
    :catchall_5b
    move-exception v0

    move p3, v9

    goto :goto_66

    .end local v7    # "b":[B
    .end local v8    # "off":I
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    :catchall_5e
    move-exception v0

    move-object v7, p1

    move v8, p2

    move p3, v9

    .end local p1    # "b":[B
    .end local p2    # "off":I
    .restart local v7    # "b":[B
    .restart local v8    # "off":I
    goto :goto_66

    .end local v7    # "b":[B
    .end local v8    # "off":I
    .end local v9    # "len":I
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_63
    move-exception v0

    move-object v7, p1

    move v8, p2

    .end local p1    # "b":[B
    .end local p2    # "off":I
    .restart local v7    # "b":[B
    .restart local v8    # "off":I
    :goto_66
    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_68

    throw v0

    :catchall_68
    move-exception v0

    goto :goto_66
.end method

.method public greylist-max-o size()J
    .registers 3

    .line 1077
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->size:J

    return-wide v0
.end method

.method public whitelist test-api skip(J)J
    .registers 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v0

    .line 1048
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->initDataOffset()J

    .line 1049
    iget-wide v1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    add-long/2addr v1, p1

    .line 1050
    .local v1, "newPos":J
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_1d

    .line 1054
    cmp-long v5, v1, v3

    if-ltz v5, :cond_19

    iget-wide v5, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    cmp-long v5, p1, v5

    if-lez v5, :cond_29

    .line 1055
    :cond_19
    iget-wide v5, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    move-wide p1, v5

    goto :goto_29

    .line 1057
    :cond_1d
    iget-wide v5, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->startingPos:J

    cmp-long v5, v1, v5

    if-gez v5, :cond_29

    .line 1061
    iget-wide v5, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->startingPos:J

    iget-wide v7, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    sub-long p1, v5, v7

    .line 1063
    :cond_29
    :goto_29
    iget-wide v5, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    add-long/2addr v5, p1

    iput-wide v5, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 1064
    iget-wide v5, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    sub-long/2addr v5, p1

    iput-wide v5, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 1065
    .end local v1    # "newPos":J
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_3e

    .line 1066
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_3d

    .line 1067
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    .line 1069
    :cond_3d
    return-wide p1

    .line 1065
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method
