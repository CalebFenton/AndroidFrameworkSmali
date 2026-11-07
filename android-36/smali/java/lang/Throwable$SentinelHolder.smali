.class Ljava/lang/Throwable$SentinelHolder;
.super Ljava/lang/Object;
.source "Throwable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SentinelHolder"
.end annotation


# static fields
.field public static final greylist-max-o STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

.field public static final greylist-max-o STACK_TRACE_SENTINEL:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 150
    new-instance v0, Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const-string v3, ""

    invoke-direct {v0, v3, v3, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

    aput-object v2, v0, v1

    sput-object v0, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_SENTINEL:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
