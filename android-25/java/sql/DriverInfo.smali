.class Ljava/sql/DriverInfo;
.super Ljava/lang/Object;
.source "DriverManager.java"


# instance fields
.field final driver:Ljava/sql/Driver;


# direct methods
.method constructor <init>(Ljava/sql/Driver;)V
    .locals 0
    .param p1, "driver"    # Ljava/sql/Driver;

    #@0
    .prologue
    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 607
    iput-object p1, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@5
    .line 606
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 611
    instance-of v1, p1, Ljava/sql/DriverInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 612
    iget-object v1, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@7
    nop

    #@8
    nop

    #@9
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v2, p1, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@b
    if-ne v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 611
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 616
    iget-object v0, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "driver[className="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/sql/DriverInfo;->driver:Ljava/sql/Driver;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "]"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method
