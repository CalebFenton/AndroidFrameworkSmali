.class Ljava/sql/DriverInfo;
.super Ljava/lang/Object;
.source "DriverManager.java"


# instance fields
.field final greylist-max-o driver:Ljava/sql/Driver;


# direct methods
.method constructor greylist-max-o <init>(Ljava/sql/Driver;)V
    .registers 2
    .param p1, "driver"    # Ljava/sql/Driver;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p1, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    .line 619
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 622
    instance-of v0, p1, Ljava/sql/DriverInfo;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    move-object v1, p1

    check-cast v1, Ljava/sql/DriverInfo;

    iget-object v1, v1, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 627
    iget-object v0, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "driver[className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
