.class public Ljava/sql/DriverPropertyInfo;
.super Ljava/lang/Object;
.source "DriverPropertyInfo.java"


# instance fields
.field public whitelist test-api choices:[Ljava/lang/String;

.field public whitelist test-api description:Ljava/lang/String;

.field public whitelist test-api name:Ljava/lang/String;

.field public whitelist test-api required:Z

.field public whitelist test-api value:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 76
    iput-object v0, p0, Ljava/sql/DriverPropertyInfo;->value:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Ljava/sql/DriverPropertyInfo;->choices:[Ljava/lang/String;

    .line 48
    iput-object p1, p0, Ljava/sql/DriverPropertyInfo;->name:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Ljava/sql/DriverPropertyInfo;->value:Ljava/lang/String;

    .line 50
    return-void
.end method
