.class final enum Landroid/util/DataUnit$4;
.super Landroid/util/DataUnit;
.source "DataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/DataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/DataUnit;-><init>(Ljava/lang/String;ILandroid/util/DataUnit-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/util/DataUnit-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/util/DataUnit$4;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public blacklist toBytes(J)J
    .registers 5
    .param p1, "v"    # J

    .line 40
    const-wide v0, 0xe8d4a51000L

    mul-long/2addr v0, p1

    return-wide v0
.end method
