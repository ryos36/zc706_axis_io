; ModuleID = 'I:/TSDI/sdsoc_v2016_3/zc706_axis_io/src/pf_read.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

; Function Attrs: nounwind
define void @_Z14pf_read_streamPj(i32* %rbuf) #0 {
  %1 = alloca i32*, align 4
  store i32* %rbuf, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !20), !dbg !21
  ret void, !dbg !22
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!11, !12}
!xidane.function_declaration_type = !{!11, !13}
!xidane.function_declaration_filename = !{!11, !14}
!llvm.module.flags = !{!15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [I:\TSDI\sdsoc_v2016_3\zc706_axis_io\src\linux/I:/TSDI/sdsoc_v2016_3/zc706_axis_io/src\pf_read.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"I:/TSDI/sdsoc_v2016_3/zc706_axis_io/src\5Cpf_read.cpp", metadata !"I:\5CTSDI\5Csdsoc_v2016_3\5Czc706_axis_io\5Csrc\5Clinux"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"pf_read_stream", metadata !"pf_read_stream", metadata !"_Z14pf_read_streamPj", i32 44, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @_Z14pf_read_streamPj, null, null, metadata !2, i32 44} ; [ DW_TAG_subprogram ] [line 44] [def] [pf_read_stream]
!5 = metadata !{metadata !"I:/TSDI/sdsoc_v2016_3/zc706_axis_io/src/pf_read.cpp", metadata !"I:\5CTSDI\5Csdsoc_v2016_3\5Czc706_axis_io\5Csrc\5Clinux"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [I:\TSDI\sdsoc_v2016_3\zc706_axis_io\src\linux/I:/TSDI/sdsoc_v2016_3/zc706_axis_io/src/pf_read.cpp]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null, metadata !9}
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned int]
!10 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!11 = metadata !{void (i32*)* @_Z14pf_read_streamPj}
!12 = metadata !{metadata !"pf_read_stream"}
!13 = metadata !{metadata !"void.unsigned int *.1"}
!14 = metadata !{metadata !"I:/TSDI/sdsoc_v2016_3/zc706_axis_io/src/zc706_axis_io.h"}
!15 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!16 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!17 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!18 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!19 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!20 = metadata !{i32 786689, metadata !4, metadata !"rbuf", metadata !6, i32 16777260, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rbuf] [line 44]
!21 = metadata !{i32 44, i32 31, metadata !4, null}
!22 = metadata !{i32 44, i32 38, metadata !4, null}
