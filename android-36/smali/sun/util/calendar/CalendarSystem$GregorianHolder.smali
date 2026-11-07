.class final Lsun/util/calendar/CalendarSystem$GregorianHolder;
.super Ljava/lang/Object;
.source "CalendarSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/calendar/CalendarSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GregorianHolder"
.end annotation


# static fields
.field private static final blacklist GREGORIAN_INSTANCE:Lsun/util/calendar/Gregorian;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetGREGORIAN_INSTANCE()Lsun/util/calendar/Gregorian;
    .registers 1

    sget-object v0, Lsun/util/calendar/CalendarSystem$GregorianHolder;->GREGORIAN_INSTANCE:Lsun/util/calendar/Gregorian;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 141
    new-instance v0, Lsun/util/calendar/Gregorian;

    invoke-direct {v0}, Lsun/util/calendar/Gregorian;-><init>()V

    sput-object v0, Lsun/util/calendar/CalendarSystem$GregorianHolder;->GREGORIAN_INSTANCE:Lsun/util/calendar/Gregorian;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
