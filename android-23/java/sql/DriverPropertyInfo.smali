.class public Ljava/sql/DriverPropertyInfo;
.super Ljava/lang/Object;
.source "DriverPropertyInfo.java"


# instance fields
.field public choices:[Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public required:Z

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 67
    iput-object p1, p0, Ljava/sql/DriverPropertyInfo;->name:Ljava/lang/String;

    #@6
    .line 68
    iput-object p2, p0, Ljava/sql/DriverPropertyInfo;->value:Ljava/lang/String;

    #@8
    .line 69
    iput-object v0, p0, Ljava/sql/DriverPropertyInfo;->choices:[Ljava/lang/String;

    #@a
    .line 70
    iput-object v0, p0, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    #@c
    .line 71
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Ljava/sql/DriverPropertyInfo;->required:Z

    #@f
    .line 66
    return-void
.end method
