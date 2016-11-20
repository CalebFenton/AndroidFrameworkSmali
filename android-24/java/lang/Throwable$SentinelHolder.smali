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
.field public static final STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

.field public static final STACK_TRACE_SENTINEL:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 147
    new-instance v0, Ljava/lang/StackTraceElement;

    #@2
    const-string/jumbo v1, ""

    #@5
    const-string/jumbo v2, ""

    #@8
    const/4 v3, 0x0

    #@9
    const/high16 v4, -0x80000000

    #@b
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@e
    .line 146
    sput-object v0, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

    #@10
    .line 154
    const/4 v0, 0x1

    #@11
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    #@13
    sget-object v1, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

    #@15
    const/4 v2, 0x0

    #@16
    aput-object v1, v0, v2

    #@18
    .line 153
    sput-object v0, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_SENTINEL:[Ljava/lang/StackTraceElement;

    #@1a
    .line 138
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
