.class public abstract Lcom/android/commands/monkey/MonkeyUtils;
.super Ljava/lang/Object;
.source "MonkeyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;
    }
.end annotation


# static fields
.field private static final DATE:Ljava/util/Date;

.field private static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field private static sFilter:Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 29
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    sput-object v0, Lcom/android/commands/monkey/MonkeyUtils;->DATE:Ljava/util/Date;

    #@7
    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@9
    .line 31
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS "

    #@c
    .line 30
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@f
    sput-object v0, Lcom/android/commands/monkey/MonkeyUtils;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    #@11
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getPackageFilter()Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 46
    sget-object v0, Lcom/android/commands/monkey/MonkeyUtils;->sFilter:Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 47
    new-instance v0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@7
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;-><init>(Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;)V

    #@a
    sput-object v0, Lcom/android/commands/monkey/MonkeyUtils;->sFilter:Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@c
    .line 49
    :cond_0
    sget-object v0, Lcom/android/commands/monkey/MonkeyUtils;->sFilter:Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;

    #@e
    return-object v0
.end method

.method public static declared-synchronized toCalendarTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    #@0
    .prologue
    const-class v1, Lcom/android/commands/monkey/MonkeyUtils;

    #@2
    monitor-enter v1

    #@3
    .line 41
    :try_start_0
    sget-object v0, Lcom/android/commands/monkey/MonkeyUtils;->DATE:Ljava/util/Date;

    #@5
    invoke-virtual {v0, p0, p1}, Ljava/util/Date;->setTime(J)V

    #@8
    .line 42
    sget-object v0, Lcom/android/commands/monkey/MonkeyUtils;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    #@a
    sget-object v2, Lcom/android/commands/monkey/MonkeyUtils;->DATE:Ljava/util/Date;

    #@c
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
